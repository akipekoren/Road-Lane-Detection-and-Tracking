function [ params ] = line_equation( line )
    points=[line.point1; line.point2];

    x1 = points(1,1);
    y1 = points(1,2);
    x2 = points(2,1);
    y2 = points(2,2);

    m = (y2 - y1) / (x2 - x1); 
    b = m * (-x1) + y1;
    params = [m, b];
        y1 = 680;
    x1 = (y1 - params(2)) / params(1);
    y2 = 420;
    x2 = (y2 - params(2)) / params(1);
    line = struct('point1', [x1, y1], 'point2', [x2, y2]);
    if isnan(x1) || isnan(x2)
        line = NaN;
    end
    
    params = line;
end

