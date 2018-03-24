# Construa um jogo de texto, em que o jogador tenha que adivinhar a palavra elixir. 
# Ao rodar o jogo, o programa deve mostrar algumas dicas como Poção mágica, liquido encantado em frasco. 
# O jogador só terá 1 tentativa, ou ele ganha o jogo ou perde. 
# Se ele ganhar, uma mensagem de vitória deverá ser mostrada como Parabéns, você acertou!. 
# Se ele perder, uma mensagem de derrota deverá ser mostrada como Errado, você perdeu.

IO.puts "Olá, este é um jogo com o objetivo de adivinhar a palavra secreta. Vamos tentar?"
resposta = IO.gets "Sim ou Não? "
if resposta |> String.trim |> String.downcase == "sim" do
	IO.puts "Vamos começar então. As dicas sobre a palavra secreta são: Poção mágica, líquido encantado em frasco"
    IO.puts "Estou aguardando sua resposta :)"
    palavra = IO.gets "Resposta => "
	palavra_secreta = "elixir"
    if palavra |> String.trim |> String.downcase == palavra_secreta do
        IO.puts "Parabéns você acertou!"
    else
		IO.puts "Você errou :/" 
	end
else 
	IO.puts "Ok, quem sabe em uma próxima vez :)"
end
