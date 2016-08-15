defmodule PhoenixBench.Mixfile do
  use Mix.Project

  def project do
    [ app: :phoenix_bench,
      version: "0.0.1",
      elixir: "~> 1.3",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
    ]
  end

  def application do
    [ mod: {PhoenixBench, []},
      applications: [:phoenix, :cowboy, :logger, :gettext]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  defp deps do
    [ {:phoenix, "~> 1.2.1"},
      {:gettext, "~> 0.9"},
      {:cowboy, "~> 1.0"},
    ]
  end
end
