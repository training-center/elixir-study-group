defmodule Desafio02 do
  def mostrarDica(array_dicas) do
    Enum.random(array_dicas)
  end

  def adivinharPalavra(palavra_alvo) do
    tentativa = IO.gets("Digite a palavra 👉  ")
      |> String.replace(~r/\r|\n/, "")
      |> String.trim
    if (String.downcase(tentativa) == "elixir") do
      IO.puts "Parabéns, você acertou! 🙌"
    else
      IO.puts "Que pena, melhor sorte na próxima! 😞"
      adivinharPalavra(palavra_alvo)
    end
  end

  def main do
    IO.puts "Prepare-se para adivinhar a palavra!"
    IO.puts "Dica: #{mostrarDica()}"
    adivinharPalavra("borboleta")
  end
end

Desafio02.main()
