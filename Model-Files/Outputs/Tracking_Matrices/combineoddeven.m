% Function to combine odd and even matrices

function output = combineoddeven(x, y) 

    x = x';
    y = y';
	[k, l] = size(x);
    [m, n] = size(y);
    output = zeros(k + m, l + n);

    % Transcribe odd matrix
    for a = 1:k 
        for b = 1:l
            output(2*a - 1, 2*b) = x(a, b);
        end
    end
    
    % Transcribe even matrix
    for c = 1:m
        for d = 1:n
            output(2*c , 2*d - 1) = y(c, d);
        end
    end

end