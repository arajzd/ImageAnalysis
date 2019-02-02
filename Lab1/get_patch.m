function patch = get_patch(image, y, x, patch_radius)
%get_patch takes out a quadratic patch from the image centred at (x, y) with a range x/y ? patch_radius.
%(The figure on the right shows a patch with patch_radius two pixels.
if (y+patch_radius> size(image,1) ||...
    (y-patch_radius <0) ||...
    x+patch_radius> size(image,2) ||...
    x-patch_radius <0 )
    error('Patch outside image borders');
end
% The funtion handles both gray and colored images here
if (length(image) == 3)
    patch(:,:,:) = image((y-patch_radius):(y+patch_radius),(x-patch_radius):(x+patch_radius),:);
else
    patch = image((y-patch_radius):(y+patch_radius),(x-patch_radius):(x+patch_radius));
end
end

