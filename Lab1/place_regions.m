function [ region_centres ] = place_regions( centre, radius )
for i = 1:3
    for j = 1:3 
        center_x(i,j) = centre(1) + 1.9*radius*(i-2) ;
        center_y(i,j) = centre(2) + 1.9*radius*(j-2) ;
    end
end
region_centres = [reshape(center_y,1,9);reshape(center_x,1,9)];
end

