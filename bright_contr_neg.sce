loc = uigetfile("*.jpg")
img = imread(loc);

// Perform brightness enhancement
enhanced_img = imadjust(img, [], [], 1.5);

// Perform contrast manipulation
contrast_img = imadjust(img, [], [0.2 0.8], 1);

// Perform image negative
negative_img = imcomplement(img);

// Display the original image, enhanced image, contrast image, and negative image
subplot(2,2,1);
imshow(img);
title("Original Image");

subplot(2,2,2);
imshow(enhanced_img);
title("Enhanced Image");

subplot(2,2,3);
imshow(contrast_img);
title("Contrast Image");

subplot(2,2,4);
imshow(negative_img);
title("Negative Image");
