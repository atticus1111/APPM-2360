%% 5.1.1
% Grayscale

X = imread('rectangle.jpg');
imagesc(X)

X_int = imread('rectangle.jpg');
X_double = double(X_int);
%
% manipulate the image
%

imwrite(uint8(X_double),'rectangle.jpg')
X_gray= X_double(:,:,1)/3.0 + X_double(:,:,2)/3.0 + X_double(:,:,3)/3.0;
imagesc(uint8(X_gray))
colormap('gray')
%% 5.1.2
% Exposure

X_whited = X_gray * 1.5 + 20;
X_whited(X_whited > 255) = 255;
X_whited(X_whited < 0) = 0;

figure;
subplot(1,2,1);
imagesc(uint8(X_gray));
colormap('gray');
title('rectangle.jpg'); 

subplot(1,2,2);
imagesc(uint8(X_whited));
colormap('gray');
title('Increased Exposure (rectangle.jpg)'); 
%% 5.1.3
% Color Change

R = X_double(:,:,1);
G = X_double(:,:,2);
B = X_double(:,:,3);

R_new = zeros(size(R));
G_new = G;
B_new = B + 80;
B_new(B_new > 255) = 255; 
B_new(B_new < 0) = 0;      
color_modified = uint8(cat(3, R_new, G_new, B_new));

figure;
subplot(1,2,1);
imagesc(uint8(cat(3, R, G, B)));
title('Original rectangle.jpg'); 

subplot(1,2,2);
imagesc(color_modified);
title('Modified Colors (No Red, +80 Blue)'); 
%% 5.1.4
% Invert Matrix

[~, n] = size(R);
E = eye(n);
E(:, [1 n]) = E(:, [n 1]);
R_swapped = R * E;
G_swapped = G * E;
B_swapped = B * E;
swapped_image = uint8(cat(3, R_swapped, G_swapped, B_swapped));

figure;
subplot(1,2,1);
imagesc(uint8(cat(3, R, G, B)));
title('Original rectangle.jpg');

subplot(1,2,2);
imagesc(swapped_image);
title('Swapped Leftmost and Rightmost Columns');
figure;
spy(E);
title('Column Swap Transformation Matrix E');


