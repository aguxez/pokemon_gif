# Pokemon Gif

### Get Pokemon gifs out of name or id

## Installation

```elixir
def deps do
  [{:pokemon_gif, "~> 1.0.0"}]
end
```

And then in your `mix.exs`

```elixir
def application do
  [extra_applications: [:pokemon_gif]]
end
```

## Usage

```elixir
  iex> PokemonGif.get_gif(94)
  # "http://www.pokestadium.com/sprites/xy/gengar"
  iex> PokemonGif.get_gif("pikachu")
  # "http://www.pokestadium.com/sprites/xy/pikachu"
```
