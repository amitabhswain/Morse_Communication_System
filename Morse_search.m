% This function is for Morse decoder function. This is used to search for characters of their respective morse code.

function [character]= Morse_search(element)
NumberOrLetter={'1';'2';'3';'4';'5';'6';'7';'8';'9';'0';'A';'B';'C';'D';'E';'F';'G';'H';'I';'J';'K';'L';'M';'N';'O';'P';'Q';'R';'S';'T';'U';'V';'W';'X';'Y';'Z';' '};
morse={[1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1];[1 0 1 0 1 1 1 0 1 1 1 0 1 1 1];[1 0 1 0 1 0 1 1 1 0 1 1 1];[1 0 1 0 1 0 1 0 1 1 1];[1 0 1 0 1 0 1 0 1];[1 1 1 0 1 0 1 0 1 0 1];[1 1 1 0 1 1 1 0 1 0 1 0 1];[1 1 1 0 1 1 1 0 1 1 1 0 1 0 1];[1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1];[1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1];[1 0 1 1 1];[1 1 1 0 1 0 1 0 1];[1 1 1 0 1 0 1 1 1 0 1];[1 1 1 0 1 0 1];[1];[1 0 1 0 1 1 1 0 1];[1 1 1 0 1 1 1 0 1];[1 0 1 0 1 0 1];[1 0 1];[1 0 1 1 1 0 1 1 1 0 1 1 1];[1 1 1 0 1 0 1 1 1];[1 0 1 1 1 0 1 0 1];[1 1 1 0 1 1 1];[1 1 1 0 1];[1 1 1 0 1 1 1 0 1 1 1];[1 0 1 1 1 0 1 1 1 0 1];[1 1 1 0 1 1 1 0 1 0 1 1 1];[1 0 1 1 1 0 1];[1 0 1 0 1];[1 1 1];[1 0 1 0 1 1 1];[1 0 1 0 1 0 1 1 1];[1 0 1 1 1 0 1 1 1];[1 1 1 0 1 0 1 0 1 1 1];[1 1 1 0 1 0 1 1 1 0 1 1 1];[1 1 1 0 1 1 1 0 1 0 1];[0 0 0 0 0 0 0]};

for i=1:length(morse)
    if isequal(morse{i},element) % find the index
        character=NumberOrLetter{i}; % assign the character for respective index
        break
    else 
        character='@'; % dummy character :when not found- due to disturbance caused by noise
    end
end

end







