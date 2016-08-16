defmodule PlugBench do
  def start(_type, _args) do
    port = System.get_env("PORT") |> String.to_integer
    Plug.Adapters.Cowboy.http(Router, [], [port: port])
  end
end
