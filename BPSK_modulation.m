%Ignore! -->signal=[1 0 1];
%Ignore! -->snr=2;
% -------------WELCOME TO BPSK MODULATOR FUNCTION-------------------------------*
% This function converts your encoded message into 1,-1 and adds a noise.
% 1 --> 1
% 0 --> -1
function [modulated_signal]= BPSK_modulation(signal,snr)
    modulated_signal=2*signal-1; % conversion formula
    modulated_signal=awgn(modulated_signal,snr,'measured'); % adding noise 
end
