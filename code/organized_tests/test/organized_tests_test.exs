defmodule OrganizedTestsTest do
  use ExUnit.Case
  doctest OrganizedTests

  @tag :passthrough
  test "pass_string passes through" do
    assert OrganizedTests.pass_string("hi") == "hi"
  end

  @tag :reverse
  test "reverse_string reverses a string" do
    assert OrganizedTests.reverse_string("hi") == "ih"
  end
end
