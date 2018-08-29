IO.puts "Uma linguagem muito daora para programação funcional"
IO.puts "===================================================="
IO.puts "Poção mágica, liquido encantado em frasco"
IO.puts "===================================================="
IO.puts "E de brinde com uma comunidade muito foda\n"

answer = String.upcase IO.gets "Qual é o nome dela?\n"

case String.replace(answer, "\n", "") do
    "ELIXIR" ->
        IO.puts "Parabéns, você acertou!"
    _ ->
        IO.puts "Errado, você perdeu."        
end