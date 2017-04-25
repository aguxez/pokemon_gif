defmodule PokemonGif.Mixfile do
  use Mix.Project

  def project do
    [app: :pokemonGif,
     version: "1.0.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: description()
     source_url: "https://github.com/aguxez/pokex_gif"]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  defp deps do
    []
  end

  defp description do
    """
    Elixir package to get Pokemon's gif out of an ID or name.
    """
  end
end
