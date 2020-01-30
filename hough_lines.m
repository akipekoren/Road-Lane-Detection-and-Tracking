function [ lines ] = hough_lines( img )

    [H, T, R] = hough(img);
    
   
    P  = houghpeaks(H, 20, 'threshold', 20);

    lines = houghlines(img, T,R,P,'FillGap', 200,'MinLength', 100 );
    
end

