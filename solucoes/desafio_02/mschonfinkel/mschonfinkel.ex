defmodule Mschonfinkel do
  @moduledoc """
    Desafio 2
  """
  Code.require_file("game.ex", __DIR__)

  def main do
    set_game_variables()
    |> game_loop
    |> did_user_win
  end

  def set_game_variables() do
    IO.puts("Digite a resposta: ")
    answer = normalize_input()
    IO.puts("Digite uma (ou mais) dicas:")
    hints = get_hints()
    IO.puts("-------------------------")
    %Game{answer: answer, hints: hints}
  end

  defp get_hints(hints \\ []) do
    case normalize_input() do
      "" -> hints
      new_hint -> get_hints(hints ++ [new_hint])
    end
  end

  defp show_hints(hints, attempts) do
    IO.puts("Dica: #{Enum.random(hints)} \t\t Tentativa ##{attempts}")
  end

  def game_loop(%Game{answer: answer, hints: hints, attempts: k}) do
    show_hints(hints, k)

    if normalize_input() == answer do
      :win
    else
      game_loop(%Game{answer: answer, hints: hints, attempts: k + 1})
    end
  end

  defp did_user_win(status) do
    case status do
      :win -> IO.puts("Parabéns, você venceu!")
      :lose -> IO.puts("Você perdeu!")
    end
  end

  defp normalize_input() do
    IO.gets("> ")
    |> String.trim()
    |> String.downcase()
  end
end

Mschonfinkel.main()