defmodule WordFinder do
  def start do
    IO.puts "Olá! Estou pensando em uma palavra, que tal adivinhar?"
    IO.puts "Vou te dar uma dica: é o nome dado a uma poção mágica ou líquido encantado em um frasco..."
    IO.puts "(e, por acaso, o nome dessa linguagem)\n"
    input = IO.gets "Digite a palavra: "
    case input |> String.trim |> String.downcase do
      "elixir" ->
        IO.puts "\nVocê acertou!"
      _ ->
        IO.puts "\nResposta errada :("
    end
  end
end
