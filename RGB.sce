clear;

// Load the color image
loc = uigetfile("*.jpg")
img = imread(loc);


// Separate the red, green, and blue planes
red_plane = img(:,:,1);
green_plane = img(:,:,2);
blue_plane = img(:,:,3);

// Display the original image and the separated color planes
subplot(2,2,1);
imshow(img);
title("Original Image");

subplot(2,2,2);
imshow(red_plane);
title("Red Plane");

subplot(2,2,3);
imshow(green_plane);
title("Green Plane");

subplot(2,2,4);
imshow(blue_plane);
title("Blue Plane");
