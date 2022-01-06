%---------- WELCOME TO MAIN FUNCTION--------------------------

message = input('Enter the message you want to send to Cooper: \n','s');

%--------Assume its Black-Box---------------------------------------
Encoded_message=Morsecode_encoder(message); 
Modulated_message=BPSK_modulation(Encoded_message,7); %SNR
Demodulated_message=BPSK_demodulation(Modulated_message);
Decoded_message= morsecode_decoder(Demodulated_message);
%--------------------------------------------------------------------

% Ploting Word Error Rate vs SNR, Letter Error Rate vs SNR 
words=[cellstr(message')']; % splitting message into words
letters=[]; 
for i=1:length(words)
    word=words{i};
    letters=[letters cellstr(word')']; % splitting every word into letters
          
end
words=char(words);
letters=char(letters);
%Plots
subplot(211);
plot_word_error(words);
subplot(212);
plot_letter_error(letters);
%-------------------------------------------------
fprintf('Original Message: %s\n', message);
fprintf('Decoded Message: %s\n', Decoded_message); % @ appears when that particular morse code gets distorted by noise
    