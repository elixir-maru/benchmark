defmodule CowboyBench.Mixfile do
  use Mix.Project

  def project do
    [ app: :cowboy_bench,
      version: "0.1.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [ mod: {CowboyBench, []},
      applications: [:logger, :ranch, :cowboy],
    ]
  end

  defp deps do
    [{:cowboy, "~> 1.0"}]
  end
end
