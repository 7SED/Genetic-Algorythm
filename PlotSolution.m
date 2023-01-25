function PlotSolution(sol,model)

    x = model.x;
    y = model.y; 
    
    sol=[sol sol(1)];
    
    plot(x(sol),y(sol),'k-o','MarkerSize',8,'MarkerFaceColor','y');
    axis equal;
end
