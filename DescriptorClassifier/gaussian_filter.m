function [ filtered_img ] = gaussian_filter( image, sigma )
% This function filters with gaussian filter
% The filter size should be at least 4 times sd
hsize = 4*sigma;
h = fspecial('gaussian', hsize, sigma);
filtered_img = imfilter(image, h, 'symmetric');
end

