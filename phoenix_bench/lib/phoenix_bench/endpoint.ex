defmodule PhoenixBench.Endpoint do
  use Phoenix.Endpoint, otp_app: :phoenix_bench

  plug PhoenixBench.Router
end
