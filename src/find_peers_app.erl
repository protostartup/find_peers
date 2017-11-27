%%%-------------------------------------------------------------------
%% @doc find_peers public API
%% @end
%%%-------------------------------------------------------------------

-module(find_peers_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    error_logger:info_msg("[~p:~p/~p]", [?MODULE, ?FUNCTION_NAME, ?FUNCTION_ARITY]),
    find_peers_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
