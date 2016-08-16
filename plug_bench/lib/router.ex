defmodule Router do
  use Plug.Router

  plug :match
  plug :dispatch

  forward "/v1", to: Shared
  forward "/v2", to: Shared
  forward "/v3", to: Shared
  forward "/v4", to: Shared
  forward "/v5", to: Shared
  forward "/v6", to: Shared
  forward "/v7", to: Shared
  forward "/v8", to: Shared
  forward "/v9", to: Shared
  forward "/v10", to: Shared

end
