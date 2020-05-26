data {
  real degrees;
  real mu;
  real sigma;
}

generated quantities {
    real student = student_t_rng(degrees, mu,sigma);
}