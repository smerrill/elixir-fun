defmodule ListsAndRecursion do
  # Mapsum function.
  def mapsum([head | []], fun) do
    fun.(head)
  end
  def mapsum([head | tail], fun) do
    mapsum(tail, fun) + fun.(head)
  end

  # Max function.
  # Terminal case for 1-length lists.
  def maximum([head | []]) do
    head
  end

  def maximum([head | tail]) do
    maximum(tail, head)
  end

  # The terminal case.
  def maximum([head | []], acc) do
    if (head > acc) do
      head
    else
      acc
    end
  end

  def maximum([head | tail], acc) do
    if (head > acc) do
      maximum(tail, head)
    else
      maximum(tail, acc)
    end
  end

  # The ASCII value of a 'z'.
  @zvalue 122
  # The amount you need to subtract to make one character
  # greater than a 'z' wrap to 'A'.
  @wrap 58

  # Caesar encryption method.
  def caesar(list, inc) do
    Enum.map(list, fn elem ->
      if ((elem + inc) > @zvalue) do
        (elem + inc) - @wrap
      else
        elem + inc
      end
    end)
  end
end

