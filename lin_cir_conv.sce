// Define the two input matrices
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
B = [1, 0, 1; 0, 1, 0; 1, 0, 1];

function C = conv2d(A, B, type)
    [m, n] = size(A);
    [p, q] = size(B);
    C = zeros(m+p-1, n+q-1);
    
    for i = 1:m+p-1
        for j = 1:n+q-1
            for k = 1:p
                for l = 1:q
                    if (i-k+1 > 0 && i-k+1 <= m && j-l+1 > 0 && j-l+1 <= n)
                        C(i,j) = C(i,j) + A(i-k+1,j-l+1) * B(k,l);
                    end
                end
            end
        end
    end
    
    if (type == "same")
        C = C(ceil(p/2):m+floor(p/2), ceil(q/2):n+floor(q/2));
    elseif (type == "valid")
        C = C(p:m, q:n);
    end
endfunction


// Perform 2D linear convolution
linear_conv = conv2d(A, B, "full");
disp(linear_conv);



function C = fftconv2(A, B)
    [m, n] = size(A);
    [p, q] = size(B);
    
    //Calculate the size of the output matrix
    sz = [m+p-1, n+q-1];
    
    //Pad A and B with zeros
    Ap = zeros(sz);
    Ap(1:m, 1:n) = A;
    Bp = zeros(sz);
    Bp(1:p, 1:q) = B;
    
    // Perform the convolution using the FFT
    Af = fft2(Ap);
    Bf = fft2(Bp);
    Cf = Af .* Bf;
    C = fft2(Cf);
    C = real(C);
    
    // Crop the output to the correct size
    C = C(1:m, 1:n);
endfunction


//Perform 2D circular convolution
circular_conv = fftconv2(A, B);
disp(circular_conv);
