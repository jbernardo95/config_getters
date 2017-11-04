defmodule ConfigGetters do
  @moduledoc """
  A module for generating cofing getters.

  ### Example

      defmodule ApplicationModule do
        use ConfigGetters

        config_getters :my_app, [:key1, :key2, :key3]

        # Access config values using their key name
        # For example key1() will return key1 config value
      end
  """

  defmacro __using__(_opts) do
    quote do
      import ConfigGetters
    end
  end

  @doc """
  Generates application config getters for the given application and keys.
  """
  defmacro config_getters(app, keys) do
    Enum.map(keys, &(generate_getter(app, &1)))
  end

  defp generate_getter(app, key) when is_atom(key) do
    quote do
      defp unquote(key)() do
        Application.get_env(unquote(app), unquote(key))
      end
    end
  end
end
