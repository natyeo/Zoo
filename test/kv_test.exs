defmodule KVTest do
  use ExUnit.Case
  doctest KV

  test "creates zoo" do
    assert KV.create_zoo() == ["lion", "tiger", "gorilla", "elephant", "monkey", "giraffe"]
  end

  test "contains" do
    zoo = KV.create_zoo()
    assert KV.contains?(zoo, "lion") == true
  end

  test "see animals" do
    zoo = KV.create_zoo()
    assert KV.see_animals(zoo, 2) == ["monkey", "giraffe"]
  end

end
