defmodule Chop do
  def guess(actual, low..high = _) do
    make_guess(actual, div(high + low, 2), high, low)
  end

  def make_guess(actual, current, _, low) when current > actual do
    IO.puts "Is it #{current}? (No, too high.)"
    guess(actual, low..(current - 1))
  end
  def make_guess(actual, current, high, _) when current < actual do
    IO.puts "Is it #{current}? (No, too low.)"
    guess(actual, (current + 1)..high)
  end
  def make_guess(actual, actual, _, _), do: actual
end

