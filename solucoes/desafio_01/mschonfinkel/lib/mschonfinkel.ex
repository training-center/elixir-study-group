defmodule Mschonfinkel do
  @moduledoc """
  Documentation for Mschonfinkel.
  """
  @hints ["Poção mágica", "Liquido encantado em frasco"]

  @doc """
    Main function, plays a one round game.
  """
  def play do
    case IO.gets(show_hint()) |> normalize_input do
      "elixir" -> IO.puts("Parabéns, você acertou!")
      _ -> IO.puts("Errado, você perdeu")
    end
  end

  def show_hint() do
    "Dica: #{Enum.random(@hints)}\n"
  end

  def normalize_input(user_input) do
    user_input
    |> String.trim()
    |> String.downcase()
  end
end
