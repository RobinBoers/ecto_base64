defmodule EctoBase64.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecto_base64,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      source_url: "https://github.com/RobinBoers/ecto_base64",
      docs: [
        main: "EctoBase64",
        api_reference: false,
        source_ref: "trunk"
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ecto, "~> 3.12.0"},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
    ]
  end
end
