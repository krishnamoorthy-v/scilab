clear;

loc = uigetfile("*.jpg")
img = imread(loc);

// Load the image


// Define the structuring element for opening and closing
se = ones(3,3);

// Perform opening operation
opened_img = imopen(img, se);

// Perform closing operation
closed_img = imclose(img, se);

// Display the original image, opened image, and closed image
subplot(1,3,1);
imshow(img);
title("Original Image");

subplot(1,3,2);
imshow(opened_img);
title("Opened Image");

subplot(1,3,3);
imshow(closed_img);
title("Closed Image");
