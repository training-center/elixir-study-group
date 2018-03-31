# Construa um jogo de texto, em que o jogador tenha que adivinhar a palavra `elixir`.
# Ao rodar o jogo, o programa deve mostrar algumas dicas como `Poção mágica, liquido encantado em frasco.`
# O jogador só terá 1 tentativa, ou ele ganha o jogo ou perde.
# Se ele ganhar, uma mensagem de vitória deverá ser mostrada como `Parabéns, você acertou!`.
# Se ele perder, uma mensagem de derrota deverá ser mostrada como `Errado, você perdeu.`

dicas = 'Poção mágica, líquido encantado em frasco'

IO.puts('Tente adivinhar a palavra secreta!\n Dica: #{dicas}')

palavra = IO.gets('Tente adivinhar, digite a palavra:')
          |> String.trim
          |> String.downcase

case palavra do
  "elixir" ->
    IO.puts('Parabéns, você acertou!')
  _ ->
    IO.puts('Errado, você perdeu.')
end
