defmodule Desafio01 do

  # Anotação de spec: serve para especificar o tipo da variável de
  # retorno da função.
  # Não faz nada por conta, mas pode ser usado com o módulo Dialyzer
  # para levantar erros se a função receber ou passar outro tipo de
  # variável que não o especificado.

  @spec mostrarDica() :: String.t

  def mostrarDica do
    dicas = ["Poção mágica", "Líquido encantado em frasco",
             "Recupera todo o HP/MP de um personagem no Final Fantasy"]
    Enum.random(dicas)
  end

  def adivinharPalavra do
    tentativa = IO.gets("Digite a palavra 👉  ")
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
