function L=TourLength(sol,model)
    
    L = 0;
    D = model.D;
    
    if isempty(sol)
        return;
    end
    
    sol=[sol sol(1)];
    
    for i=1:numel(sol)-1
       L=L+D(sol(i),sol(i+1))
    end
     

end