defmodule ConfigGettersTest do
  use ExUnit.Case
  doctest ConfigGetters

  test "greets the world" do
    assert ConfigGetters.hello() == :world
  end
end
