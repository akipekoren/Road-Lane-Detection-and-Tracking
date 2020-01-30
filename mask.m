function [ image ] = mask( image )
    
% we take the bottom quarter for region of interest

% challenge_Trim.mp4 720x1280

    X = [0, 320, 960, 1280];
    Y = [720, 360, 360, 720];
    mask = poly2mask(X, Y, 720, 1280);
    image = bitand(image, mask);
    
    % video.MOV 540x960 
%     
%     X = [0, 240, 720, 960];
%     Y = [540, 270, 270, 540];
%     mask = poly2mask(X, Y, 540, 960);
%     image = bitand(image, mask);
%  
end

