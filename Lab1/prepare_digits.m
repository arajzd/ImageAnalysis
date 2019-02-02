load digits.mat
radius = 6.5;
centre = [20,20];
for i = 1:size(digits_training,2)
    desc = gradient_descriptor(digits_training(i).image, centre, radius);
    digits_training(i).descriptor = desc;
end