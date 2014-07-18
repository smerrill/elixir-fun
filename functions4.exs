prefix = fn prefix -> (fn text -> "#{prefix} #{text}" end) end
mrs = prefix.("Mrs")
mrs.("Smith") |> IO.puts
prefix.("Elixir").("rocks!") |> IO.puts
