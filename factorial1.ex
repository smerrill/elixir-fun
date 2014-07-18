defmodule Factorial do
  def of(n) when n < 0, do: {:error, "You cannot take the factorial of a natural number."}
  def of(0), do: 1
  def of(n) when n > 0, do: n * of(n-1)
end
