function [ leftLines, rightLines ] = determine_slope( lines )
    leftLines = [];   
    rightLines = [];
    for k = 1:length(lines)
    points=[lines(k).point1; lines(k).point2];
    x1=points(1,1);
    y1=points(1,2);
    x2=points(2,1);
    y2=points(2,2);
    slope=(y2-y1)/(x2-x1);
    
        if (slope < -0.5)
            leftLines = [leftLines lines(k)];
        elseif (slope > 0.5)
            rightLines = [rightLines lines(k)];
        end
    end
end