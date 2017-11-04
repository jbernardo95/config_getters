# config_getters 

Simple config value getter generator for Elixir applications.

```elixir
# config/config.exs
use Mix.Config

config :my_app, key1: value1
config :my_app, key2: value2
config :my_app, key3: value3

# Without config_getters
def ApplcationModule do
  # ...

  defp key1, do: Application.get_env(:my_app, :key1)
  defp key2, do: Application.get_env(:my_app, :key2)
  defp key3, do: Application.get_env(:my_app, :key3)

  # ...
end

# With config_getters
def ApplicationModule do
  use ConfigGetters

  config_getters :my_app, [:key1, :key2, :key3]
end
```

## Installation

Add `config_getters` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:config_getters, "~> 0.1.0"}]
end
```

Then run `mix deps.get` to get the package.

## Documentation

The project documentation can be found [here](https://hexdocs.pm/config_getters/).

## License

config_getters source code is licensed under the [MIT License](LICENSE.md).

