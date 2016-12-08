## Using ExUnit: Testing processes

We can also test to see if messages are received.

```
defmodule SimpleTest do
  def send_hi( pid ) when is_pid(pid) do
  	send pid, :hello
  end
end

defmodule SimpleTestTest do
  use ExUnit.Case
  doctest SimpleTest

  test "Should send message to pid" do
    SimpleTest.send_string( self, "hi")
    assert_receive "hi"
    refute_receive "ahhh"
  end
end
```