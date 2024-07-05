defmodule ListFilterTest do
  use ExUnit.Case

  describe "ListFilter.call/1" do
    test "filters non numeric strings from list" do
      assert ListFilter.call(["1", "2", "a", "3"]) == ["1", "2", "3"]
    end
  end
end
