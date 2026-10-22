% Martins and Ning Optimization Techniques
% Chap 10
% Example 10.7

%% Functiona and sample points
f = @(x) exp(-0.1*x).*sin(x);

x = linspace(0,12);
xs = [0.5,2,2.5,9,10];
ns = length(xs);

figure(1); clf; hold on
plot(x,f(x),linewidth=2)
plot(xs,f(xs),'.',MarkerSize=30,Color="black")


%% Optimal kriging parameters

% Define Gaussian kernel

% Optimal mean value
mu_star = ones(1,ns);

% Optimal variance value