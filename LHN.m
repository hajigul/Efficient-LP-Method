function lhn = LHN(adj)
%Leicht Holme Newman
comm_n = (adj)^2;
deg = sum(adj);
% deg_score = deg'*deg;
lhn = comm_n./(deg'*deg);
end