defmodule Yugo.MixProject do
  use Mix.Project

  def project do
    [
      app: :yugo,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "Yugo",
      source_url: "https://github.com/Flying-Toast/yugo",
      homepage_url: "https://github.com/Flying-Toast/yugo",
      docs: [
        main: "readme",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger, :ssl],
      mod: {Yugo.Application, []}
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.29", only: :dev, runtime: false},
      {:nimble_parsec, "~> 1.2"}
    ]
  end
end
