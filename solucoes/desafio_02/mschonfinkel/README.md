# Mschonfinkel

### Desafio 2 - Adivinhe a palavra completo

Construa o mesmo jogo acima, porém com algumas modificações:

>    Faça a palavra a ser adivinhada ser configurável.
>    O usuário tem tentativas ilimitadas.

A palavra em si deve ser entrada logo após rodar o programa. Ao errar, o programa deve voltar a perguntar qual a palavra correta novamente, até que ele acerte.

### Rodando o exemplo

```
$ elixir mschonfinkel.ex
> Democritus
Digite uma (ou mais) dicas:
> Vazio
> Átomos
> Filósofo Grego
> "Risonho"
> Aluno de Leucippus
> 
-------------------------
Dica: filósofo grego 		 Tentativa #1
> Plato
Dica: átomos 		 Tentativa #2
> Leucippus
Dica: filósofo grego 		 Tentativa #3
> Aristotle
Dica: átomos 		 Tentativa #4
> Science
Dica: "risonho" 		 Tentativa #5
> Democritus
Parabéns, você venceu!

```
