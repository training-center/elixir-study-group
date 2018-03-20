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
Erlang/OTP 20 [erts-9.2] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false] 

Interactive Elixir (1.6.3) - press Ctrl+C to exit (type h() ENTER for help)
iex> Mschonfinkel.play
Dica: Liquido encantado em frasco
Elixir
Parabens, você acertou!
:ok
iex> Mschonfinkel.play
Dica: Liquido encantado em frasco
Pedra Filosofal
Errado, você perdeu
:ok
```
