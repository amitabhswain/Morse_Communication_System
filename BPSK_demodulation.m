%Ignore! --> signal=[0.69 2.1 -1.6 -2 0];
% -------------WELCOME TO BPSK DEMODULATOR FUNCTION-------------------------------*
% This function undos the modulation produced due to modulator function.
function [demodulated_signal]=BPSK_demodulation(signal)
    signal_len=length(signal);
    for i=1:signal_len
        if(signal(i)<0) %converts numbers less than 0 to 0
            signal(i)=0;
        else            % converts others to 1
            signal(i)=1;
        end
    end
    demodulated_signal=signal;
end