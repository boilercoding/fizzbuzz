defmodule Fizzbuzz do
  def fizzbuzz(n) when rem(n, 15) == 0, do: "FizzBuzz"
  def fizzbuzz(n) when rem(n, 05) == 0, do: "Buzz"
  def fizzbuzz(n) when rem(n, 03) == 0, do: "Fizz"
  def fizzbuzz(n),                      do: n

  def result(n) do
    Enum.map(1..n, fn(n) -> {n , fizzbuzz(n)} end) |> Enum.sort
  end

  def print_result(num) do
    Enum.each(result(num), fn({n, r}) -> IO.puts "#{n}: #{r}" end)
  end
end
