function n_index = node_index(OPEN,xval,yval)
    %This function returns the index of the location of a node in the list
    %OPEN
    %
    %   Copyright 2009-2010 The MathWorks, Inc.
    i=1;
    while(OPEN(i,2) ~= xval || OPEN(i,3) ~= yval )
        if i >= size(OPEN, 1)
            i = -1;
            break;
        else
            i=i+1;
        end
        
    end;
    n_index=i;
end