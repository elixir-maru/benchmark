defmodule CowboyBench do

  def start(_type, _args) do
    dispatch = :cowboy_router.compile([
      {:_, [ {"/[...]", Router, []} ]}
    ])
    port = System.get_env("PORT") |> String.to_integer
    :cowboy.start_http(:http, 100, [port: port], [env: [dispatch: dispatch]])
  end

end
