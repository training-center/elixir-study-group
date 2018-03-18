defmodule Mschonfinkel do
  @moduledoc """
  Documentation for Mschonfinkel.
  """

 def play do
    dica = "Poção mágica, liquido encantado em frasco.\n"
    case userInput IO.gets dica do
      "elixir" -> IO.puts "Parabéns, você acertou!"
      _ -> IO.puts "Errado, você perdeu"        
    end
  end

  def userInput entrada do
    entrada
    |> String.trim("\n")
    |> String.downcase
  end
end
