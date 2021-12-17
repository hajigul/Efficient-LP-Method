% clear;
% del_link_new;    
resultaa = predictLinksAA(adj_mat);
    resultcn = cn_own(adj_mat);
    resultgps = GPS_Pred(adj_mat);
    resultpa = PA(adj_mat);
    resultkatz = katz_ind(adj_mat,0.5);
    resultpd  = PD(adj_mat);
    resultra = RA(adj_mat);
    resultlhn = LHN(adj_mat);
   [acc_ra, prec_ra] =  compute_accuracy_new(orig_adj,mod_adj,resultra);
   [acc_lhn,prec_lhn] =  compute_accuracy_new(orig_adj,mod_adj,resultlhn);
   [acc_pd, prec_pd] =  compute_accuracy_new(orig_adj,mod_adj,resultpd);
   [acc_aa, prec_aa] =  compute_accuracy_new(orig_adj,mod_adj,resultaa);
   [acc_cn, prec_cn] =  compute_accuracy_new(orig_adj,mod_adj,resultcn);
   [acc_gps, prec_gps] = compute_accuracy_new(orig_adj,mod_adj,resultgps);
   [acc_pa, prec_pa] =  compute_accuracy_new(orig_adj,mod_adj,resultpa);
   [acc_katz, prec_katz] =  compute_accuracy_new(orig_adj,mod_adj,resultkatz);

   
   disp(strcat('AA: AUC',num2str(acc_aa),', PREC:',num2str(prec_aa)));
%    disp(strcat('HP: AUC',num2str(acc_hp),', PREC:',num2str(prec_ph)));
   disp(strcat('LHN: AUC',num2str(acc_lhn),', PREC:',num2str(prec_lhn)));
   disp(strcat('PD: AUC',num2str(acc_pd),', PREC:',num2str(prec_pd)));
   disp(strcat('RA: AUC',num2str(acc_ra),', PREC:',num2str(prec_ra)));
   disp(strcat('CN: AUC',num2str(acc_cn),', PREC:',num2str(prec_cn)));
   disp(strcat('GPS: AUC',num2str(acc_gps),', PREC:',num2str(prec_gps)));
   disp(strcat('PA: AUC',num2str(acc_pa),', PREC:',num2str(prec_pa)));
   disp(strcat('Katz: AUC',num2str(acc_katz),', PREC:',num2str(prec_katz)));
     
   