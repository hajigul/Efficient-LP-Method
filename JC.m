function jc = JC(adj)
comm_n = (adj)^2;
deg = sum(adj);
deg_score =(deg*deg');
uni = union(deg_score,deg_score);
jc = comm_n./(uni);
end