function frame=binarize(frame)

[r, c]=size(frame);
for i=1:c
    for j=1:r
        if(frame(j,i)<195)
            frame(j,i)=0;
        else
            frame(j,i)=255;
        end
    end
end
end