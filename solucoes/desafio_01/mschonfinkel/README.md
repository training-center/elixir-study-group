### Desafio 1 - Adivinhe a palavra simplificado

Construa um jogo de texto, em que o jogador tenha que adivinhar a palavra `elixir`.
Ao rodar o jogo, o programa deve mostrar algumas dicas como `Poção mágica, liquido encantado em frasco.`
O jogador só terá 1 tentativa, ou ele ganha o jogo ou perde.
Se ele ganhar, uma mensagem de vitória deverá ser mostrada como `Parabéns, você acertou!`.
Se ele perder, uma mensagem de derrota deverá ser mostrada como `Errado, você perdeu.`

**Links:**

- [Getting Started](https://elixir-lang.org/getting-started/introduction.html)
- [IO module](https://elixir-lang.org/getting-started/io-and-the-file-system.html#the-io-module)


### Rodando

```
$ iex -S mix
Compiling 1 file (.ex)
Interactive Elixir (1.6.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Mschonfinkel.play
Poção mágica, liquido encantado em frasco.
Elixir
Parabéns, você acertou!
:ok
iex(2)> Mschonfinkel.play
Poção mágica, liquido encantado em frasco.
Alguma Coisa
Errado, você perdeu
:ok
```
