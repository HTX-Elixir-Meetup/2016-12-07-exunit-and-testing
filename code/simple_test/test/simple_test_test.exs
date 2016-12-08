defmodule SimpleTestTest do
  use ExUnit.Case
  doctest SimpleTest

  test "Should reverse a string" do
    assert SimpleTest.reverse_string( "heyo" ) == "oyeh"
    refute SimpleTest.reverse_string( "heyo" ) == "heyo"
  end

  test "Should reverse only strings" do
    assert_raise FunctionClauseError, fn ->
        SimpleTest.reverse_string( 1234 )
      end
  end

  test "Should send message to pid" do
    SimpleTest.send_string( self, "hi")
    assert_receive "hi"
    refute_receive "ahhh"
  end
end
