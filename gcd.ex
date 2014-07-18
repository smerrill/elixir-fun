defmodule GCD do
  def gcd(x, _) when x < 0, do: {:error, "You cannot find the gcd of a negative integer."}
  def gcd(_, y) when y < 0, do: {:error, "You cannot find the gcd of a negative integer."}
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end

