defmodule PlugBench.Mixfile do
  use Mix.Project

  def project do
    [ app: :plug_bench,
      version: "0.1.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
    ]
  end

  def application do
    [ mod: { PlugBench, [] },
      applications: [:logger, :plug],
    ]
  end

  defp deps do
    [ {:plug, "~> 1.2"},
      {:cowboy, "~> 1.0"},
    ]
  end
end
