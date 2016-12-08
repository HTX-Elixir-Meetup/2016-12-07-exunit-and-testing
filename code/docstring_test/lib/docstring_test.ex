defmodule DocstringTest do
  @doc """
  This function returns a reversed string.

  iex> DocstringTest.reverse_string "hi"
  "ih"
  """
  def reverse_string(string) when is_bitstring(string) do
    String.reverse(string)
  end
end
