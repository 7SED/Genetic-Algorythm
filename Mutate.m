function y=Mutate(x)

%Using Equal Probabilities
    method = randi([1 3]);
    
    switch  method
        
        case 1
            y=DoSwap(x);
        case 2
            y=DoInsertion(x);
        case 3
            y=DoReversion(x);
            
    end
    

end

    function y=DoSwap(x)
    
        n = numel(x);
        i = randsample(n,2);
        i1=i(1);
        i2=i(2);
        
        y = x;
        y([i1 i2]) =  y([i2 i1]);
        
    end

    function y=DoInsertion(x)
    
        n = numel(x);
        i = randsample(n,2);
        i1=i(1);
        i2=i(2);
        
        if i1<i2
            
            % 1 ... i1-1 i1 i1+1 ..... i2-1 i2 i2+1 ... n
            % i1 is going to be inserted between i2 and i2+1
             y = x([1:i1-1 i+1:i2 i1 i2+1:end]);
         
        else
            % i2 < i1
            % 1 ... i2-1 i2 i2+1 ..... i1-1 i1 i1+1 ... n
            % i1 is going to be inserted between i2 and i2+1
            y = x([1:i2 i1 i2+1:i1-1 i1+1:end]);
        end
         
         
    end

    function y=DoReversion(x)
    
        n = numel(x);
        i = randsample(n,2);
        i1=min(i);
        i2=max(i);
        
         y = x;
         y(i1:i2) = x(i2:-1:i1);

    end