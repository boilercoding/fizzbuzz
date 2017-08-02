defmodule FizzBuzz do
  def play(min, max), do: Enum.each(min..max, &play/1)
  def play(n) when rem(n, 15) == 0, do: IO.puts "FizzBuzz"
  def play(n) when rem(n, 5) == 0,   do: IO.puts "Buzz"
  def play(n) when rem(n, 3) == 0,   do: IO.puts "Fizz"
  def play(n),                                    do: IO.puts n
end
