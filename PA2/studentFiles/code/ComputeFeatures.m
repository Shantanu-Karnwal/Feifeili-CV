function features = ComputeFeatures(img)
% Compute a feature vector for all pixels of an image. You can use this
% function as a starting point to implement your own custom feature
% vectors.
%
% INPUT
% img - Array of image data of size h x w x 3.
%
% OUTPUT
% features - Array of computed features for all pixels of size h x w x f
%            such that features(i, j, :) is the feature vector (of
%            dimension f) for the pixel img(i, j, :).

    img = double(img);
    height = size(img, 1);
    width = size(img, 2);
    features = zeros(height, width, 6);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                                                                         %
    %                              YOUR CODE HERE                             %
    %                                                                         %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    features(:,:,1) = img(:,:,1);
    features(:,:,2) = img(:,:,2);
    features(:,:,3) = img(:,:,3);
    for i = 1:height
        for j = 1:width
            features(i,j,4) = j;            %x coordinate
            features(i,j,5) = i;            %y coordinate
        end
    end
    
    %Adding Vertical Gradients and edges
    imgLeft = img(:,1:width-1);
    imgRight = img(:,2:width);
    features(:,2:width,6) = imgRight - imgLeft;

end