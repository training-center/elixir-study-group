ExUnit.start

defmodule Desafio01Test do
  use ExUnit.Case

  test "mostrarDica() retorna String.t?" do
    assert Desafio01.mostrarDica()
    end
end
