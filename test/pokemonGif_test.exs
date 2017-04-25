defmodule PokemonGifTest do
  use ExUnit.Case
  doctest PokemonGif

  test "should return link with name of pokemon with integer" do
    pokemon = PokemonGif.get_gif(25)
    assert pokemon == "http://www.pokestadium.com/sprites/xy/pikachu.gif"
  end

  test "should return name of pokemon with bitstring" do
    pokemon = PokemonGif.get_gif("GENGAR")
    assert pokemon == "http://www.pokestadium.com/sprites/xy/gengar.gif"
  end

  test "should convert name of pokemon when pokemon has a special character" do
    pokemon = PokemonGif.get_gif("Mr. mime")
    pokemon_with_topdash = PokemonGif.get_gif("Farfetch'd")
    assert pokemon == "http://www.pokestadium.com/sprites/xy/mr-mime.gif"
    assert pokemon_with_topdash == "http://www.pokestadium.com/sprites/xy/farfetchd.gif"
  end

  test "should fail when pokemon name is wrong or doesnt exist" do
    assert_raise(ArgumentError, "Pokemon identifier must be an integer or a valid Pokemon name as string", fn ->
      PokemonGif.get_gif("doesnt exist")
    end)
  end
end
