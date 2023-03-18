// Define a 4x4 gray-scale image
//I = [ 47  27  30  22;      44  28  32  24;      40  29  36  24;      43  31  33  26 ];
I =  [1 ,1 ,1 ,1;   1 ,1 ,1 ,1;    1 ,1 ,1 ,1; 1 ,1 ,1 ,1]
// Display the original image
disp("Original Image:");
disp(I);

// Compute the DFT of the image
DFT = fft2(I);
disp("DFT of the Image:");
disp(DFT);


function Y = dct2(X)
    // Compute the size of the input matrix
    [m, n] = size(X);

    // Initialize the output matrix
    Y = zeros(m, n);

    //Compute the DCT for each column of the input matrix
    for j = 1:n
        Y(:,j) = dct(X(:,j));
    end

    // Compute the DCT for each row of the output matrix
    for i = 1:m
        Y(i,:) = dct(Y(i,:));
    end
endfunction

// Compute the DCT of the image
DCT = dct2(I);
disp("DCT of the Image:");
disp(DCT);
