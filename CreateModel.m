function model=CreateModel()

    x = rands(24,[-1,1]);
    y = rands(24,[-1,1]);
   
    n = numel(x);
    pos = [x y];
    D = pdist2(pos,pos);  
    
    model.n=n;
    model.x=x;
    model.y=y;
    model.D=D;
 
end