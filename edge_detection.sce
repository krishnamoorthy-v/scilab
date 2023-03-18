// Read in an image
loc = uigetfile("*.jpg")
img = imread(loc);


a = rgb2gray ( img ) ;
c = edge(a, 'sobel');
d = edge(a, 'prewitt');
e = edge(a, 'log');
f = edge(a, 'canny');
imshow (a )
title("orginal Image")
figure
imshow (c)
title("Sobel")
figure
imshow (d )
title("Prewitt")
figure
imshow (e )
title("Log")
figure
imshow (f )
title("Canny")
