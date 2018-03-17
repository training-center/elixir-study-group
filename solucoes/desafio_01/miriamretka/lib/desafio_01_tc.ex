defmodule Desafio_01Tc do
  @moduledoc """
  Construa um jogo de texto, em que o jogador tenha que adivinhar a palavra
  elixir. Ao rodar o jogo, o programa deve mostrar algumas dicas como
  'Poção mágica', 'liquido encantado em frasco'.
  O jogador só terá 1 tentativa, ou ele ganha o jogo ou perde.
  Se ele ganhar, uma mensagem de vitória deverá ser mostrada como
  'Parabéns, você acertou!'. Se ele perder, uma mensagem de
  derrota deverá ser mostrada como 'Errado, você perdeu'.
  """

  def mostrar_dica do
    dicas = ["Poção mágica", "líquido encantado em frasco"]
    "Dica: " <> Random.choice(dicas)
  end

  def adivinhar_palavra do
    tentativa = IO.gets("Digite a palavra >> ")
      |> String.replace(~r/\r|\n/, "")
      |> String.trim
    if (String.downcase(tentativa) == "elixir") do
      IO.puts("Parabéns, você acertou!")
    else
      IO.puts("Errado, você perdeu.")
    end
  end

  def main do
    IO.puts("Olá, prepare-se para adivinhar a palavra!")
    IO.puts(mostrar_dica())
    adivinhar_palavra()
  end
end

Desafio_01Tc.main
