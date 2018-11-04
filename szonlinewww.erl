%%
%%
%%

-module(szonlinewww).
-author("Maas-Maarten Zeeman <mmzeeman@xs4all.nl>").

-mod_title("SZ Online Site").
-mod_description("The SZ Online Site").
-mod_prio(10).

-export([init/1, event/2]).

-include_lib("zotonic.hrl").

init(Context) ->
    z_datamodel:manage(?MODULE, datamodel(), Context).

%%
%% Orders
%%

event(#postback{message={order_now, Args}}, Context) ->
    z_render:dialog(?__("Order Now", Context), "_action_dialog_order_now.tpl", Args, Context);

event(#submit{message={order_now, Args}}, Context) ->
    ProductId = proplists:get_value(product, Args),
    Message = ["Product: ", z_dispatcher:abs_url(
        z_dispatcher:url_for(page, [{id, ProductId}], Context), Context)],
    send_render([{message, Message} | Args], Context),

    GrowlMessage = ?__("Thank you for your order. You will receive a payment request withing 24 hours.", Context),
    z_render:wire([{growl, [{text, GrowlMessage}, {stay, true}]}, {dialog_close, []}], Context);

%%
%% Notify Me
%%

event(#postback{message={notify_me, Args}}, Context) ->
    z_render:dialog(?__("Notify Me", Context), "_action_dialog_notify_me.tpl", Args, Context);

event(#submit{message={notify_me, Args}}, Context) ->
    ProductId = proplists:get_value(product, Args),
    Message = ["Product: ", z_dispatcher:abs_url(
        z_dispatcher:url_for(page, [{id, ProductId}], Context), Context)],
    send_render([{message, Message} | Args], Context),

    GrowlMessage = ?__("Thank you. You will be notified when the product is back in stock.", Context),
    z_render:wire([{growl, [{stay, true}, {text, GrowlMessage}]},
                   {dialog_close, []}], Context).

send_render(Args, Context) ->
    Template = proplists:get_value(email_template, Args, "email_contact.tpl"),
    Email = proplists:get_value(to, Args, m_config:get_value(?MODULE, email, Context)),
    To = case z_utils:is_empty(Email) of
            true -> z_email:get_admin_email(Context);
            false -> Email
         end,
    From = case proplists:get_value(from, Args, m_config:get_value(?MODULE, from, Context)) of
            undefined -> z_context:get_q_validated("mail", Context);
            From_ -> From_
         end,
    Vars = [{email_from, From},
            {name, z_context:get_q("name", Context)},
            {message, proplists:get_value(message, Args, z_context:get_q("message", Context))},
            {fields, z_context:get_q_all_noz(Context)}],
    z_email:send_render(To, Template, Vars, Context).

datamodel() ->
    #datamodel{
        categories=[
           {product, article, [{title, <<"Product">>}]}
        ]
   }.  
