defmodule Challenge do
    defp play_response(question, answer) do
        IO.puts "Ops, você errou!"
        answer = String.upcase IO.gets "Tente a sorte, qual a palavra secreta?\n" 
        play(question, answer)
    end


    def play(question, answer) do
        if question == answer do
            IO.puts "Acertou!"
        else
            play_response(question, answer)
        end
    end
end

x = String.upcase IO.gets "Digite a palavra à ser advinhada?\n"
y = String.upcase IO.gets "Tente a sorte, qual a palavra secreta?\n"

Challenge.play(x, y)
