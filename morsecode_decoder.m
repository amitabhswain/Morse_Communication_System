%Ignore! --> demodulated_msg=[1 0 1 1 1 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1];
% -------------WELCOME TO MORSE DECODER FUNCTION-------------------------------*
% This function tries to retrieve back your original message at receiver's end by decoding demodulated signal.
function [decoded_message]=morsecode_decoder(demodulated_msg)
demodulated_msg_len=length(demodulated_msg);
decoded_message=''; %initialise empty message
i=1;
stack=[];

while(i<=demodulated_msg_len)
    stack=[stack demodulated_msg(i)];
    stack_len=length(stack);
    if stack_len> 3      % assign character for morse code till last 3 elements of stack is 0. For space between letters.
        if isequal(stack(stack_len-2:stack_len),[0 0 0])
            char=Morse_search(stack(1:stack_len-3));
            decoded_message=append(decoded_message,char);
            stack=[]; % empty the stack
        end
    elseif stack_len==3   % assigning spaces between words when stack=[0 0 0]
        if isequal(stack,[0 0 0])
            char=' ';
            decoded_message=append(decoded_message,char);
            stack=[]; % empty the stack
            i=i+1;
        end
    end
    
    if i==demodulated_msg_len % assign characters for morse code when index equals your demodulated message length
        if (~isequal(stack,[]))
            char=Morse_search(stack);
            decoded_message=append(decoded_message,char);
            stack=[];
        end
    end  
    i=i+1;
end
    
