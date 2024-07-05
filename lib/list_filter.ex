defmodule ListFilter do

  def call(list) do
    filter(list, [])
  end

  defp reverse([], reversed), do: reversed

  defp reverse([head | tail], reversed) do
    reverse(tail, [head | reversed])
  end

  defp filter([], list), do: reverse(list, [])

  defp filter([head | tail], list) do
    if (String.match?(head, ~r/\d+/)) do
      filter(tail, [head | list])
    else
      filter(tail, list)
    end
  end
end
