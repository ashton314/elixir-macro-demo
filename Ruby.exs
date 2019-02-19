defmodule Ruby do
  
  # Snarfed from _Metaprogramming Elixir_ by Chris McCord
  defmacro while(expression, do: block) do
    quote do
      try do
        for _ <- Stream.cycle([:ok]) do
          if unquote(expression) do unquote(block)
          else
            Loop.break
          end end
      catch
        :break -> :ok
      end end
  end
  def break, do: throw :break

  # Just so this looks a little more ruby-ish
  def puts(str), do: IO.puts str

end
