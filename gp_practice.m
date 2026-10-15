
x = linspace(0,1,100);
mu = @(x) zeros(size(x));
cov = @(x_i,x_j) exp(-abs(x_i - x_j));

%% Gaussian process with simple exponential kernel (covariance)
gp_sampling(mu,cov,x)

%% Gaussian process with squared exponential kernel (covariance)
cov = @(x_i,x_j) exp(-(x_i - x_j)^2);
gp_sampling(mu,cov,x)

function gp_sampling(mu,cov,x)
    % Get mean vector and covariance matrix
    mu_vec = mu(x);
    
    for i = 1:length(x)
        for j = 1:length(x)
            cov_matrix(i,j) = cov(x(i),x(j));
        end
    end
    
    % Plot covariance heatmap
    figure(1); clf
    heatmap(cov_matrix)
    
    % Sample multivariable normal
    nr = 5;
    U = mvnrnd(mu_vec,cov_matrix,nr);
    
    % Display gaussian process samples
    figure(2); clf; hold on
    for i = 1:nr
    plot(x,U(i,:))
    end
    xlabel("x")
    ylabel("u(x)")
    fontsize(18,"points")
end