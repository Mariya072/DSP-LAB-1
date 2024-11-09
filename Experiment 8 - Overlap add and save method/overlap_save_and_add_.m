% Input the sequences
x = input('Enter the sequence x(n): ');
h = input('Enter the sequence h(n): ');

% Overlap-Save Method
disp('Overlap-Save Method:');
L = length(x);      % Length of input sequence x
M = length(h);      % Length of input sequence h
N = L + M - 1;      % Length of linear convolution result
P = M;              % Segment length for overlap-save (equal to filter length)

% Zero-pad x to make its length a multiple of P
x_padded = [zeros(1, M-1), x, zeros(1, P - mod(length(x), P))];

% Initialize output for overlap-save
y_ols = [];
for i = 1:P:(length(x_padded) - M + 1)
    segment = x_padded(i:i+P-1);
    conv_result = ifft(fft(segment, N) .* fft(h, N));
    y_ols = [y_ols, conv_result(M:end)];  % Remove the first (M-1) samples
end

disp('Result of linear convolution using Overlap-Save method:');
disp(y_ols);

% Overlap-Add Method
disp('Overlap-Add Method:');
P = M;  % Segment length for overlap-add (can be set differently, but should be >= M)

% Zero-pad x to make its length a multiple of P
x_padded = [x, zeros(1, P - mod(length(x), P))];
num_segments = length(x_padded) / P;

% Initialize output for overlap-add
y_ola = zeros(1, N + P * (num_segments - 1));
for k = 0:num_segments-1
    segment = [x_padded(k*P+1 : k*P+P), zeros(1, M-1)];
    conv_result = ifft(fft(segment, N) .* fft(h, N));
    y_ola(k*P+1 : k*P+N) = y_ola(k*P+1 : k*P+N) + conv_result;
end

disp('Result of linear convolution using Overlap-Add method:');
disp(y_ola);