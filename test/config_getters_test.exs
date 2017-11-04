defmodule ConfigGettersTest do
  use ExUnit.Case

  defmodule ExampleModule do
    use ConfigGetters

    config_getters :config_getters, [:key1, :key2, :key3]

    # Config getter functions are private, so they cannot be called outside the module
    # These functions are defined to make it possible to call them from outside
    def key1_getter, do: key1()
    def key2_getter, do: key2()
    def key3_getter, do: key3()
  end

  setup do
    Application.put_env(:config_getters, :key1, :value1)
    Application.put_env(:config_getters, :key2, :value2)
    Application.put_env(:config_getters, :key3, :value3)
  end

  test "generated getter methods returns the right values" do
    assert :value1 = ExampleModule.key1_getter
    assert :value2 = ExampleModule.key2_getter
    assert :value3 = ExampleModule.key3_getter
  end
end
