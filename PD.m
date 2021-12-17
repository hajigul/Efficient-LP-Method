function pd = PD(adj)
%Perameter Dependent
comm_n = adj.^2;
deg = sum(adj);
deg_score = deg'*deg;
% pd = (comm_n ./ deg_score).^0;
pd = (comm_n ./ deg_score)^0.5;
% pd = (comm_n ./ deg_score)^1;
end