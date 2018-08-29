# Desafio 01 grupo de estudos

hints = "Poção mágica, liquido encantado em frasco."
IO.puts "Dicas: #{hints}"

guess =
  IO.gets("Adivinhe a palavra: ")
  |> String.trim
  |> String.downcase

case guess do
  "elixir" ->
    IO.puts "Parabéns, você acertou!"
  _ ->
    IO.puts "Errado, você perdeu."
end