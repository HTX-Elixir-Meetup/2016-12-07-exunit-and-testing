## Using ExUnit: Docstring tests

For brevity, we can include tests in the source files themselves.

```
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
```

**N.B.** You need to include the `@doc` annotation or ExUnit will gripe.