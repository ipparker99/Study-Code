

% Choose 3 angles
alpha = deg2rad(90);
beta = deg2rad(90);

plot_direction(alpha,beta)
plot_direction(0,deg2rad(90))
plot_direction(deg2rad(90),0)
plot_direction(deg2rad(45),deg2rad(45))
plot_direction(deg2rad(70),deg2rad(70))
plot_direction(deg2rad(130),deg2rad(20))


function [] = plot_direction(alpha,beta)
    cos_gamma = 1 - cos(alpha)^2 - cos(beta)^2;

    figure(1); clf; 
    plot3([0,1],[0,0],[0,0],color="black")
    hold on
    plot3([0,0],[0,1],[0,0],color="black")
    plot3([0,0],[0,0],[0,1],color="black")
    quiver3(0,0,0,cos(alpha),cos(beta),cos_gamma,AutoScale="off",LineWidth=2)
    xlabel("x")
    ylabel("y")
    zlabel("z")
    axis equal
    fontsize(18,"points")
end