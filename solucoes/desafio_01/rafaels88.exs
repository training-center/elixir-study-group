defmodule GuessTheWord do
  @right_answer "elixir"
  @tips ["Poção mágica", "Liquido encantado em frasco"]

  def play do
    with :ok <- display_instructions(),
         :ok <- display_tips(),
         answer <- ask_the_answer() do
      answer |> fetch_result |> IO.puts()
    end
  end

  # Private

  defp display_instructions do
    IO.puts("Adivinhe a palavra a partir das dicas. Você tem uma chance.")
  end

  defp display_tips do
    IO.puts("Dicas:\n")
    @tips |> Enum.each(fn tip -> IO.puts("* #{tip}") end)
  end

  defp ask_the_answer do
    result = IO.gets("Sua resposta -> ")
    result |> String.downcase() |> String.trim()
  end

  defp fetch_result(@right_answer), do: "Parabéns, você acertou!"
  defp fetch_result(_), do: "Errado, você perdeu"
end

GuessTheWord.play()
