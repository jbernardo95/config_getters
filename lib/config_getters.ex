defmodule ConfigGetters do
  defmacro __using__(_opts) do
    quote do
      import ConfigGetters
    end
  end

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
