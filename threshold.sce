


// Load the image
f = uigetfile("*jpg")
img = imread(f);

// Convert the image to grayscale
gray_img = rgb2gray(img);


function output_img = thresh(input_img, threshold_value, mode)
    // Convert input image to double precision
    input_img = double(input_img);
    
    // Apply thresholding operation based on the mode
    switch mode
        case 'binary'
            output_img = input_img >= threshold_value;
        case 'inverse'
            output_img = input_img < threshold_value;
        otherwise
            error("Invalid thresholding mode. Use binary or inverse");
    end
    
    // Convert output image to uint8 format
    output_img = uint8(output_img * 255);
endfunction





// Apply the threshold operation
threshold_value = 128; // set the threshold value
thresholded_img = thresh(gray_img, threshold_value, 'binary');

// Display the thresholded image
imshow(thresholded_img);
