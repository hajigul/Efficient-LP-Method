function hp  = HP(adj)
%Hub Promoted index
comm_n = (adj)^2;
deg = sum(adj);
hp = comm_n./min(deg);
end