defmodule SimpleTest do
  def reverse_string(str) when is_bitstring(str)do
    String.reverse str
  end

  def send_string(pid, string) when is_pid(pid) and is_bitstring(string) do
    send pid, string
  end
end