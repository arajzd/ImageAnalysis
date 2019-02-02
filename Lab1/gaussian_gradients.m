function [ grad_x, grad_y ] = gaussian_gradients(image, sigma)
% This function computes gradients along x and y
gauss_filted = gaussian_filter(image,sigma);
grad_h = [-0.5,0,0.5];
grad_x = imfilter(gauss_filted,grad_h,'symmetric');
grad_y = imfilter(gauss_filted,grad_h','symmetric');
end

