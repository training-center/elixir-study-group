defmodule Desafio_01TcTest do
  use ExUnit.Case
  doctest Desafio_01Tc

  """Requirements for the program:
  1- Player needs to guess the word 'elixir'
  2- Player has only one try
  3- Program should give a random hint on startup, like:
     'Poção mágica', 'líquido encantado em frasco'
  4- Victory message is: 'Parabéns, você acertou!'
  5- Error message is: 'Errado, você perdeu'"""

  # Program should stop when we get the right word
  test "function exits with word 'elixir'" do
    assert Desafio_01Tc.hangman == "elixir"
  end

  test "reader function should get the input" do
    assert Desafio_01Tc.read_input == :ok
  end

  test "hint should be displayed on startup" do
    # Code goes here
  end

  test "player should have only one try" do
    # Code goes here
  end

end
