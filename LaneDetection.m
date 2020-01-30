function [ frame ] = LaneDetection( frame )
    
    image_gray = checkrgb(frame);
    image_binarize = binarize(image_gray);
    image_gauss = gaussfilt(image_binarize);
    image_sobel = edge(image_gauss,'sobel');
    image_mask = mask(image_sobel);
    image_line = hough_lines(image_mask);
    
    [leftLines, rightLines] = determine_slope(image_line);
      
   
    rightLane = line_equation(rightLines);
    leftLane = line_equation(leftLines);
      
    frame = insertShape(frame, 'Line', [ rightLane.point1(1) rightLane.point1(2) rightLane.point2(1) rightLane.point2(2)], 'LineWidth', 9, 'Color', 'cyan');
    frame = insertShape(frame, 'Line', [ leftLane.point1(1) leftLane.point1(2) leftLane.point2(1) leftLane.point2(2)], 'LineWidth', 9, 'Color', 'cyan');
    

    
end