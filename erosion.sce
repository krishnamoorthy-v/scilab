loc = uigetfile("*.jpg")
img = imread(loc);

// Load the image

// Define the structuring element for dilation and erosion
se = ones(3,3);

// Perform dilation operation
dilated_img = imdilate(img, se);

// Perform erosion operation
eroded_img = imerode(img, se);

// Display the original image, dilated image, and eroded image
subplot(1,3,1);
imshow(img);
title("Original Image");

subplot(1,3,2);
imshow(dilated_img);
title("Dilated Image");

subplot(1,3,3);
imshow(eroded_img);
title("Eroded Image");

