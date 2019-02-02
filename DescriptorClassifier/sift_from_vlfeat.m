clearvars
load stuff_for_lab_1/church_data.mat ;
load stuff_for_lab_1/church_test/manual_labels.mat;
true_pos = 0;
churches=  dir('stuff_for_lab_1/church_test/*.jpg');
for i = 1:size(churches,1)
    img = imread(['stuff_for_lab_1/church_test/','church',num2str(i),'.jpg']);
    img =rgb2gray(img);
    img = im2double(img);
%     img = mean(img,3);
    if (i == 2)
        imagesc(img)
    end
    [label, name] = classify_church(img, feature_collection);
    if (name == manual_labels{i})
        true_pos = true_pos + 1;
    end
end
accuracy = true_pos/size(churches,1);
