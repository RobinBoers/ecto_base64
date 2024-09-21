defmodule EctoBase64.MixProject do
  use Mix.Project

  @github "https://github.com/RobinBoers/ecto_base64"

  def project do
    [
      app: :ecto_base64,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "Ecto Base64",
      description: description(),
      package: package(),
      source_url: @github,
      docs: [
        main: "EctoBase64",
        api_reference: false,
        source_ref: "trunk"
      ]
    ]
  end

  def application do
    []
  end

  defp description do
    "Custom Ecto type to base64 {en,de}code binary data in your database"
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => @github}
    ]
  end

  defp deps do
    [
      {:ecto, "~> 3.12.0"},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
    ]
  end
end
