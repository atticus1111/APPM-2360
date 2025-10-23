%% 1-3

%{ 
image read 
x = imread('inputFile.jpg');
imagesc(x)

X is 3 matricies with dim = 2
one for red green and blue 

X_double = double (x); converts values into floating points 


'imwrite' will write to the matrix, can only write to matrix 
if it is in integers, to do so use 'unit8'

to view again may need to convert to 'unit8' too, 
'imagese(unit8(X_double))'

using greyscale images, will have to convert from color images
0 black to 255 white 
made with linear combination of each: X double(:,:,1), X double(:,:,2),
and X double(:,:,3).

'X_gray= X_double(:,:,1)/3.0 + X_double(:,:,2)/3.0 + X_double(:,:,3)/3.0;
imagesc(uint8(X_gray))
colormap(’gray’)
'

spy([matrix])
will display graph of matrix, easier to read and unerstand

%}


X = imread('andor.jpg');

imagesc(X)

X_int = imread('andor.jpg');
X_double = double(X_int);
%
% manipulate the image
%
figure;
imwrite(uint8(X_double),'andorpart2.jpg')

X_gray= X_double(:,:,1)/3.0 + X_double(:,:,2)/3.0 + X_double(:,:,3)/3.0;

imagesc(uint8(X_gray))

colormap('gray')


figure; 
spy (X);


figure;
i=eye(300);

spy(i);



%% 4

%{
image compression 

DST matrix

s_i,j=sqrt(2/n)sin((pi*(i-1/2)*(j-1/2))/n)

use nested for loops 

2d DSt X_g

Y=SX_gS^t

%}




%% 5.4


%loop to switch maybe still usefull
i2 = 3;
for i = 1:3
    j2 = 3;              
    for j = 1:3
        y(i,j) = A(i2,j2);
        j2 = j2 - 1;
    end
    i2 = i2 - 1;          
end 