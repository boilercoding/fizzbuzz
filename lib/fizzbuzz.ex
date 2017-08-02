defmodule Fizzbuzz do
  def fizzbuzz(n) when rem(n, 15) == 0, do: "FizzBuzz"
  def fizzbuzz(n) when rem(n, 05) == 0, do: "Buzz"
  def fizzbuzz(n) when rem(n, 03) == 0, do: "Fizz"
  def fizzbuzz(n),                                    do: n

  def result(n) do
    Enum.map(1..n, fn(n) -> {n , fizzbuzz(n)} end) |> Map.new
  end

  def print_result(n) do
    result = result(n)
    result_keys = Map.keys(result) |> Enum.sort
    Enum.each(result_keys, fn(n) -> IO.puts "#{n}: #{result[n]}" end)
  end
end
