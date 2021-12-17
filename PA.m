function scorepa = PA(adj)
degs = sum(adj);
% degs = 1./log(sum(adj)+1);
scorepa = degs'*degs;
end