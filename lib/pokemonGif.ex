defmodule PokemonGif do
  @moduledoc false

  @base_url "http://www.pokestadium.com/sprites/xy/"
  @pokemon PokemonGif.Name.list()

  def get_gif(name) when is_integer(name) do
    poke_name = Enum.at(@pokemon, name - 1)
    "#{@base_url}#{poke_name |> clean_name() |> String.downcase()}.gif"
  end

  def get_gif(name) when is_bitstring(name) do
    if member?(organize_list(@pokemon), clean_name(name)) do
      "#{@base_url}#{name |> clean_name() |> String.downcase()}.gif"
    else
      "Pokemon identifier must be an integer or a valid Pokemon name as string"
    end
  end

  defp organize_list(list) do
    Enum.map(list, fn names -> clean_name(names) end)
  end

  defp member?(list, item_checker) do
    list 
    |> Enum.map(&(&1)) 
    |> Enum.member?(item_checker)
  end

  defp clean_name(name) do
    name
    |> String.replace(~r/\./, "")
    |> String.replace(~r/'/, "")
    |> String.replace(~r/\s/, "-")
    |> String.downcase()
  end
end
