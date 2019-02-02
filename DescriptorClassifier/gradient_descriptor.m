function desc = gradient_descriptor(image, position, radius)
% - Computes gaussian gradients. Let the standard deviation be proportional to radius.
% - Divide your gradients into 3 ? 3 regions defined by place_regions.
% - Compute a gradient histogram for the gradients from each region.
% - Stack the histograms into a 72-vector.
% - Normalize that vector to unit length.
 sigma = 0.25; % by testing with so many sigmas, sigma = 0.25 gives us the best result 
[ grad_x, grad_y ] = gaussian_gradients(image, sigma);
[ region_centres ] = place_regions( position, radius );
for i = 1:9
    patchs(i,1,:,:) = get_patch(grad_x, region_centres(1,i), region_centres(2,i), radius);
    patchs(i,2,:,:) = get_patch(grad_y, region_centres(1,i), region_centres(2,i), radius);
    histogram(i,:) = gradient_histogram(squeeze(patchs(i,1,:,:)),squeeze(patchs(i,2,:,:)));
end
hist_size_72 = reshape(histogram,72,[]);
desc = hist_size_72/norm(hist_size_72);
end