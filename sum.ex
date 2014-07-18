defmodule Sum do
  def of(n) when n < 0, do: {:error, "You cannot use this sum function with a negative number."}
  def of(0), do: 0
  def of(n), do: n + of(n - 1)
end

