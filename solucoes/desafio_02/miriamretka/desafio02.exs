defmodule Desafio02 do
  def mostrarDica(array_dicas) do
    Enum.random(array_dicas)
  en

  def adivinharPalavra(palavra_alvo) do
    tentativa = IO.gets("Digite a palavra 👉  ")
      |> String.replace(~r/\r|\n/, "")
      |> String.trim
    if (String.downcase(tentativa) == palavra_alvo) do
      IO.puts "Parabéns, você acertou! 🙌"
    else
      IO.puts "Que pena, tente de novo! 😞"
      adivinharPalavra(palavra_alvo)
    end
  end

  def main do
    IO.puts "Prepare-se para adivinhar a palavra!"
    dicas = ["Lepidóptero", "nasce como lagarta",
             "mesma família das mariposas"]
    IO.puts "Dica: #{mostrarDica(dicas)}"
    adivinharPalavra("borboleta")
  end
end

Desafio02.main()
