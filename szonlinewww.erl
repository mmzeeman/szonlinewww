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

event(#postback{message={order_now, Args}}, Context) ->
    z_render:dialog(?__("Order Now", Context), "_action_dialog_order_now.tpl", Args, Context);

event(#submit{message={order_now, Args}}, Context) ->
    z_render:wire([{dialog_close, []}], Context);

event(#postback{message={notify_me, Args}}, Context) ->
    z_render:dialog(?__("Notify Me", Context), "_action_dialog_notify_me.tpl", Args, Context);

event(#submit{message={notify_me, Args}}, Context) ->
    Context1 = z_render:growl_error(?__("Sorry, not yet implemented.", Context), Context),
    z_render:wire([{dialog_close, []}], Context1).

datamodel() ->
    #datamodel{
        categories=[
           {product, article, [{title, <<"Product">>}]}
        ]
   }.  
