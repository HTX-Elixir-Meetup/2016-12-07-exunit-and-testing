## Using ExUnit: Writing Tests

ExUnit lets us test to see if certain values are returned or exceptions raised.

```
defmodule SimpleTest do  
  def reverse_string(str) when is_bitstring(str) do
    String.reverse str
  end
end

defmodule SimpleTestTest do
  use ExUnit.Case
  doctest SimpleTest

  test "Should reverse a string" do
    assert SimpleTest.reverse_string( "heyo" ) == "oyeh"
    refute SimpleTest.reverse_string( "heyo" ) == "heyo"
  end

  test "Should reverse only strings" do
    assert_raise FunctionClauseError, fn ->
        SimpleTest.reverse_only_string( 1234 )
      end
  end
end
````