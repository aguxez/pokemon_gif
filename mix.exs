defmodule PokemonGif.Mixfile do
  use Mix.Project

  def project do
    [app: :pokemon_gif,
     version: "1.0.2",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: description(),
     package: package(),
     source_url: "https://github.com/aguxez/pokemon_gif"]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :credo]]
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev},
     {:credo, "~> 0.7.3"}]
  end

  defp description do
    """
    Elixir package to get Pokemon's gif out of an ID or name.
    """
  end

  defp package do
    [
      name: :pokemon_gif,
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Miguel Diaz"],
      licenses: ["Apache 2.0"],
      links: %{Github: "https://github.com/aguxez/pokemon_gif"}
    ]
  end
end
