defmodule CauldronTest do
  use ExUnit.Case
  doctest Cauldron

  test "greets the world" do
    assert Cauldron.hello() == :world
  end
end
