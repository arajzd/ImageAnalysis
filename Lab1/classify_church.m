function [label, name] = classify_church(image, feature_collection)
[~, descriptors_img]= extractSIFT(image);
corrs = matchFeatures(descriptors_img',(feature_collection.descriptors)',...
'MatchThreshold', 100, 'MaxRatio', .7,'Metric','SAD','Unique',true);
labels = feature_collection.labels(corrs(:,2));
label = mode(labels);
name = string(feature_collection.names(label));
end