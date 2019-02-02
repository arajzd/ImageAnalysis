true_positive = 0;
max_percentage = 0;
best_sigma = inf;
warning('off','all')
for i = 1:size(digits_validation,2)
    label(i) = classify_digit(digits_validation(i).image, digits_training);
    if (digits_validation(i).label == label(i))
        true_positive = true_positive +1;
    end
end
percentage = true_positive/size(digits_validation,2)