defmodule MaruBench.Mixfile do
  use Mix.Project

  def project do
    [ app: :maru_bench,
      version: "0.0.1",
      elixir: "~> 1.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps
    ]
  end

  def application do
    [applications: [:logger, :maru]]
  end

  defp deps do
    [ {:maru, "~> 0.10" } ]
  end
end
