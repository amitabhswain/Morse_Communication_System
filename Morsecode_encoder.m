% Ignore!--->message = input('Enter the message you want to send \n','s');  
% -------------WELCOME TO MORSE ENCODER FUNCTION-------------------------------*
% This function converts your input into morse code format in 1s, 0s.
% Eg: A I --> 1 0 1 1 1 0 0 0 0 0 0 0 1 0 1 
function [encoded_message]= Morsecode_encoder(message)
msg = upper(message); %converting all the characters into upper case
word = strsplit(msg); % split the message into seperate words
morse={[1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1];[1 0 1 0 1 1 1 0 1 1 1 0 1 1 1];[1 0 1 0 1 0 1 1 1 0 1 1 1];[1 0 1 0 1 0 1 0 1 1 1];[1 0 1 0 1 0 1 0 1];[1 1 1 0 1 0 1 0 1 0 1];[1 1 1 0 1 1 1 0 1 0 1 0 1];[1 1 1 0 1 1 1 0 1 1 1 0 1 0 1];[1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1];[1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1];[1 0 1 1 1];[1 1 1 0 1 0 1 0 1];[1 1 1 0 1 0 1 1 1 0 1];[1 1 1 0 1 0 1];[1];[1 0 1 0 1 1 1 0 1];[1 1 1 0 1 1 1 0 1];[1 0 1 0 1 0 1];[1 0 1];[1 0 1 1 1 0 1 1 1 0 1 1 1];[1 1 1 0 1 0 1 1 1];[1 0 1 1 1 0 1 0 1];[1 1 1 0 1 1 1];[1 1 1 0 1];[1 1 1 0 1 1 1 0 1 1 1];[1 0 1 1 1 0 1 1 1 0 1];[1 1 1 0 1 1 1 0 1 0 1 1 1];[1 0 1 1 1 0 1];[1 0 1 0 1];[1 1 1];[1 0 1 0 1 1 1];[1 0 1 0 1 0 1 1 1];[1 0 1 1 1 0 1 1 1];[1 1 1 0 1 0 1 0 1 1 1];[1 1 1 0 1 0 1 1 1 0 1 1 1];[1 1 1 0 1 1 1 0 1 0 1]}; 
NumberOrLetter={'1';'2';'3';'4';'5';'6';'7';'8';'9';'0';'A';'B';'C';'D';'E';'F';'G';'H';'I';'J';'K';'L';'M';'N';'O';'P';'Q';'R';'S';'T';'U';'V';'W';'X';'Y';'Z'};  
bits=[];
for i=1:length(word)
    for j=1:length(word{i})
        text=word{i};
        char=text(j);
        [~, index] = ismember(char, NumberOrLetter); % gets the indexes of the characters of every word of your message
        bits=[bits morse{index}];    % assign the morse code according to the respective index 
        if j~=length(word{i}) 
            bits=logical([bits [0 0 0]]); % assigning for the space between letters
        end 
    end    
    if i~= length(word)
        bits=[bits [0 0 0 0 0 0 0]]; % assigning for the space between words
    end        
end
encoded_message=bits; % final encoded message
end


