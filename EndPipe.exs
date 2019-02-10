defmodule EndPipe do

  defmacro start_val ~>> {function, env, args} do
    {function, env, args ++ [start_val]}
  end

end
