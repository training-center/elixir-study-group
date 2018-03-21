defmodule Desafio01 do

  # Anotação de spec: serve para especificar o tipo da variável de
  # retorno da função

  # Strings em Elixir tem outro significado
  @spec mostrarDica() :: charlist()

  def mostrarDica do
    dicas = ["Poção mágica", "Líquido encantado em frasco",
             "Recupera todo o HP/MP de um personagem no Final Fantasy"]
    Enum.random(dicas)
  end

  def adivinharPalavra do
    tentativa = IO.gets("Digite a palavra 👉  ")
      |> String.replace(~r/\r|\n/, "")
      |> String.trim
    if (String.downcase(tentativa) == "elixir") do
      IO.puts "Parabéns, você acertou! 🙌"
    else
      IO.puts "Que pena, melhor sorte na próxima! 😞"
    end
  end

  def main do
    IO.puts "Prepare-se para adivinhar a palavra!"
    IO.puts "Dica: #{mostrarDica()}"
    adivinharPalavra()
  end
end

Desafio01.main()
