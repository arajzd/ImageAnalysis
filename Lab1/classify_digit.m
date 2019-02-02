function label = classify_digit(digit_image, digits_training)
radius = 6;
centre = [20,20];
desc_digit_image = gradient_descriptor(digit_image, centre, radius);
most_similar = inf;
label = inf;
for i = 1:size(digits_training,2)
    if (norm(digits_training(i).descriptor - desc_digit_image) < most_similar )
        most_similar = norm(digits_training(i).descriptor - desc_digit_image);
        label = digits_training(i).label;
    end
end
% uncomment to see the result
%disp([' I am ', num2str(label)]);
end

