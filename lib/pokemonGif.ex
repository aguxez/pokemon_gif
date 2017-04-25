defmodule PokemonGif do
  @moduledoc false

  @base_url "http://www.pokestadium.com/sprites/xy/"
  @pokemon PokemonGif.Name.list()

  def get_gif(name) when is_integer(name) do
    poke_name = Enum.at(@pokemon, name - 1)
    poke_name
    |> String.replace(~r/\./, "")
    |> String.replace(~r/'/, "")
    |> String.replace(~r/\s/, "-")
    "#{@base_url}#{String.downcase(poke_name)}.gif"
  end

  def get_gif(name) when is_bitstring(name) do
    if member?(@pokemon, String.capitalize(name)) do
      "#{@base_url}#{String.downcase(name)}.gif"
    else
      "Pokemon identifier must be an integer or a valid Pokemon name as string"
    end
  end

  defp member?(list, item_checker) do
    list |> Enum.map(&(&1)) |> Enum.member?(item_checker)
  end
end
