defmodule Desafio02 do
  @moduledoc """
  Construa o mesmo jogo acima, porém com algumas modificações:

  - Faça a palavra a ser adivinhada ser configurável.
  - O usuário tem tentativas ilimitadas.

  A palavra em si deve ser entrada logo após rodar o programa. Ao
  errar, o programa deve voltar a perguntar qual a palavra correta
  novamente, até que ele acerte."""

  def mostrar_dica(lista_dicas) do
    "Dica: " <> Random.choice(lista_dicas)
  end

  def adivinhar_palavra(palavra_alvo) do
    tentativa = IO.gets("Digite a palavra >> ") |> String.replace(~r/\r|\n/, "")
    if (String.downcase(tentativa) == palavra_alvo) do
      IO.puts("Parabéns, você acertou!")
    else
      IO.puts("Errado, você perdeu.")
    end
  end

  def main do
    IO.puts("Olá, prepare-se para adivinhar a palavra!")
    IO.puts(mostrar_dica(["Lepidóptero", "faz casulo",
                          "da mesma família das mariposas"]))
    adivinhar_palavra("borboleta")
  end
end

Desafio02.main
