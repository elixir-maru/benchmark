use Mix.Config

config :maru, API,
  versioning: [using: :path],
  http: [port: {:system, "PORT"}]
