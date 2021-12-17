function HD  = HD(adj)
%Hub Promoted index
comm_n = (adj)^2;
deg = sum(adj);
HD = comm_n./max(deg);
end