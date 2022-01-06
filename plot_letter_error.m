% Function for Plotting Letter error rate vs SNR
%Ignore! --> chars=['I' ,'h', '7'];
function let_msg = plot_letter_error(chars)
chars_len=length(chars);

snr=1:0.1:25; % Varying SNR from 1 to 25 in steps of 0.1
snr_len=length(snr);
final_err=zeros(1,snr_len); % initialise the final error to 0
char_err=[]; % for indiviual letter errors

for i=1:chars_len
    char=chars(i);
    disp(char);
    encoded_message=Morsecode_encoder(char);
    for j=1:0.1:25
        disp("Wait");
        let_err=0; % initialise letter error to 0
        for k=1:1000 % running the loop 1000 times for a given value of SNR and counting the number of errors
            modulated_message=BPSK_modulation(encoded_message,j);
            demodulated_message=BPSK_demodulation(modulated_message);
            if ~isequal(encoded_message,demodulated_message)
                let_err=let_err+1; % increment letter error by 1 when any mismatch is found between encoded message & demodulated message
            end
        end
        let_err=let_err/1000; % calculating average letter error
        char_err=[char_err let_err]; % add this average letter error to individual character error
    end
    final_err=final_err + char_err; % add the character error to final error
    char_err=[]; % empty the character error
end   

final_err=final_err/chars_len; % average final error for errors in the message
let_msg='Letter Error Rate vs SNR -> Success!';
disp('Plots');
plot(snr,final_err); % plotting letter error rate vs snr
title('Letter Error Rate vs SNR');
xlabel('SNR----->');
ylabel('Error---->');
grid on;
end
            
            
            
            
            
          