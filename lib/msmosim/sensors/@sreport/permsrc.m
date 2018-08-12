function varargout = printsr( these , varargin )


fprintf('\n');
for i=1:length(these)
    stime = these(i).time;
    
    if 1<=i && i< 10
        fprintf('@ time step %d  :',i );
    elseif 10<=i && i<99
        fprintf('@ time step %d :',i );
    elseif 99<=i && i<999
        fprintf('@ time step %d:',i );
    else
        fprintf('@ time step %d:',i );
    end
    
    for j=1:length( these(i).given(:))
        fprintf('%d \t', these(i).given(j));
    end
    
    fprintf('\n');
end



if nargout > 0
    varargout{1} = these;
end
