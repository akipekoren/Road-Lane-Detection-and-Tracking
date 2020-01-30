function res = checkrgb(Im)


if size(Im,3) == 3
   
Im2 = rgb2gray(Im);
res = Im2;

% subplot(2,2,2)
% imshow(res)
% title('Changed to gray')
else
    
 res =Im;

end