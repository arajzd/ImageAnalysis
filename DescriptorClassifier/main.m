%%
close all
clearvars
% Q1.2. 
test_image = reshape((11:100),10,9);
sigma = 0.25;
radius = 6.5;
centre = [20,20];
imagesc(test_image)
colormap gray
patch = get_patch(test_image,4,4,2);
figure
imagesc(patch)
colormap gray
filtered_img = gaussian_filter(test_image,sigma);
figure
imagesc(filtered_img)
colormap gray
[grad_x, grad_y] = gaussian_gradients(test_image,sigma);
%%
% Q1.6
imagesc(test_image)
axis image
hold on
quiver(grad_x, grad_y)
