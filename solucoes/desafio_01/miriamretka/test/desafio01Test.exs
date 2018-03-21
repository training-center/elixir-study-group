ExUnit.start

defmodule Desafio01Test do
  use ExUnit.Case

  # Teste de demonstração, ainda não há uma maneira padrão de fazer
  # checagem de tipos em Elixir.
  test "mostrarDica() retorna um String válido" do
    assert String.valid?(Desafio01.mostrarDica()) == true
  end
end
