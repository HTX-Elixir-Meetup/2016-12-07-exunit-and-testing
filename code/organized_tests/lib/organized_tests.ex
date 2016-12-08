defmodule OrganizedTests do
    def pass_string( string ) when is_bitstring(string) do
        string    
    end
    def reverse_string(string) when is_bitstring(string) do
        String.reverse(string)
    end
end
