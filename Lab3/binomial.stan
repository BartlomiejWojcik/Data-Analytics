data {
  real alpha;
  real meann;
  real phi;
}

generated quantities {  
    real neg_bin_con = neg_binomial_rng(alpha, alpha/meann);
    real neg_bin_dis = neg_binomial_2_rng(meann, phi);
    real poisson_con = poisson_rng(neg_bin_con);
    real poisson_dis = poisson_rng(neg_bin_dis); 
}