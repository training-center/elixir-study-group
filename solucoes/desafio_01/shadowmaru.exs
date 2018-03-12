hint = "Dica: Poção mágica, liquido encantado em frasco."
word = IO.gets "#{hint} Adivinhe a palavra: "

if String.trim(word) == "elixir" do
  IO.puts "Parabéns, você acertou!"
else
  IO.puts "Errado, você perdeu"
end