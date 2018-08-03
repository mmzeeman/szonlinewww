%%
%%
%%

-module(szonlinewww).
-author("Maas-Maarten Zeeman <mmzeeman@xs4all.nl>").

-mod_title("SZ Online Site").
-mod_description("The SZ Online Site").
-mod_prio(10).


-export([init/1]).

-include_lib("zotonic.hrl").


init(Context) ->
    z_datamodel:manage(?MODULE, datamodel(), Context).


datamodel() ->
    #datamodel{
        categories=[
           {product, article, [{title, <<"Product">>}]}
        ]
   }.  
