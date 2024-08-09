%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% These Variables control  parameters in the simulation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;

%Source
Sampling_rate = 10000; %rate at which incoming audio is sampled in Hz
Quantization = 16; %arbitrarily chosen bits
Bit_period = (1/Sampling_rate)/(Quantization); % in seconds



%Sink
MaxErrors = 100;
MaxBits = 1e6; % actually parameter for max symbols, may need to modify later

%AWGN
RandomSeed = 67;
WaveformEnergy = 1;
SNR = 9; %dB

%Modulation
%Currently using BPSK Block, if we want to switch to another technique 
%must change Block

% Tx / Rx Filter
Ns = 400; % Number of samples per waveform
Filter_span = 4; %For raised cosine pulse, defines how many symbol periods the pulse lasts.
Roll_off = 0.8;
Linear_amplitude_gain= 0.6468;



%Note that K = Ns and sample offset = Ns - 1
%Normalization method is in  drop down list in Tx





