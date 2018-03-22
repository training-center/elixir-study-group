hint = "Dica: Poção mágica, liquido encantado em frasco."
word = IO.gets "#{hint} Adivinhe a palavra: "

if word |> String.trim |> String.downcase == "elixir" do
  IO.puts "Parabéns, você acertou!"
else
  IO.puts "Errado, você perdeu"
end