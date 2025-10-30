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
imagesc(X_gray);
colormap('gray');
title('rectangle.jpg'); 

subplot(1,2,2);
imagesc(X_whited);
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

%% 5.1.5
% Horizontal Wrap-Around Shift by 306 pixels

X = imread('rectangle.jpg');
X_double = double(X);

[rows, cols, channels] = size(X_double);
shift = 306;  
H = zeros(cols, cols);
for i = 1:cols-shift
    H(i+shift, i) = 1;
end

for i = cols-shift+1:cols
    H(i-(cols-shift), i) = 1;
end

figure;
spy(H);
title('Circular Horizontal Shift Matrix (H)');

X_shifted = zeros(size(X_double));
for c = 1:channels
    X_shifted(:,:,c) = X_double(:,:,c) * H;  
end

figure;
subplot(1,2,1);
imagesc(uint8(X_double));
title('Original rectangle.jpg');
subplot(1,2,2);
imagesc(uint8(X_shifted));
title('Horizontally Shifted (Wrap-Around, 306 pixels right)');


