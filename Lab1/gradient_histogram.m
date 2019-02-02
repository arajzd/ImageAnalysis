function histogram = gradient_histogram(grad_x,grad_y)
% Places each gradient into one of eight orientation
    angles = atan2(grad_y,grad_x) + pi;
    mags = hypot(grad_x,grad_y);
    bins = zeros(1,8);
    for i = 1:size(angles,1)
        for j = 1:size(angles,2)
            bins(uint8(ceil(angles(i,j)/(pi/4)))) = bins(uint8(ceil(angles(i,j)/(pi/4))))...
            +mags(i,j); 
        end
    end
    histogram = bins;
end