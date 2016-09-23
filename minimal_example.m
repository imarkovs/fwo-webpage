% Minimal example to use the DecouplePolynomial function.                                     %%%%%%
% Written by Gabriel Hollander, Vrije Universiteit Brussel, Dept. ELEC, 23/09/2016            %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define the coefficients of the coupled polynomial function
coupledPolynomial.coupledCoeffs = ...
    [     0         0;
     0.6831    0.4721;
     0.4655   -0.9391;
    -0.0938    0.0303;
    -0.2170   -0.1800;
     0.0382    0.3527;
     0.1768   -0.0600;
     0.1009    0.1590;
     0.1338   -0.1365;
    -0.1134   -0.0080];

% Define the covariance matrix of the coefficients of the coupled polynomial function
coupledPolynomial.covarianceMatrix = ...
  [20.4249    1.1870    0.3628    1.1181    1.1635    0.8549    0.8851    1.5330    0.9837    1.7687    1.0917    1.1463    0.3094    0.3401    0.7166    0.8166    1.3572    1.0606    1.6403    1.5378;
    1.1870   21.6421    0.7562    0.6601    0.5804    1.7154    1.0586    1.6728    1.3173    1.3445    1.8402    0.9934    1.2621    1.4759    0.9024    0.5631    0.6313    0.5703    0.7415    1.0789;
    0.3628    0.7562   20.0214    0.2626    0.4446    0.9606    0.9340    0.9343    0.9785    1.7718    1.0341    1.7127    0.8557    1.0483    1.1658    1.1046    0.7708    1.3063    0.7602    0.8709;
    1.1181    0.6601    0.2626   20.6441    1.6315    0.6639    0.5798    1.3384    1.4613    1.0039    0.7927    1.3288    1.4767    0.3089    1.2620    0.2964    1.4958    0.9076    1.4337    1.2517;
    1.1635    0.5804    0.4446    1.6315   20.5953    0.7600    0.9616    1.2528    0.4597    1.2890    1.4393    1.1009    0.8743    1.4120    0.9909    0.7115    0.7549    1.1016    0.7984    1.3982;
    0.8549    1.7154    0.9606    0.6639    0.7600   20.6635    1.2525    0.4992    0.5044    1.3123    0.8015    0.7500    1.2405    0.5294    1.6547    1.6188    1.2085    1.4892    1.3507    1.6699;
    0.8851    1.0586    0.9340    0.5798    0.9616    1.2525   21.2113    0.7592    0.9836    0.8075    0.6943    1.8122    0.7641    0.6867    0.2524    0.9425    0.8304    0.9719    0.3054    0.4213;
    1.5330    1.6728    0.9343    1.3384    1.2528    0.4992    0.7592   20.9797    0.8453    1.5316    1.1906    0.9659    0.4069    1.1173    1.3914    1.3479    1.6535    1.1877    1.1540    1.0716;
    0.9837    1.3173    0.9785    1.4613    0.4597    0.5044    0.9836    0.8453   21.1920    0.9321    0.6278    0.4387    0.3218    0.6867    0.5791    1.6487    1.2905    0.9696    0.8992    1.3350;
    1.7687    1.3445    1.7718    1.0039    1.2890    1.3123    0.8075    1.5316    0.9321   21.9968    0.7769    0.4901    1.2374    1.4242    1.8563    0.8203    1.6617    0.6575    1.0534    1.1121;
    1.0917    1.8402    1.0341    0.7927    1.4393    0.8015    0.6943    1.1906    0.6278    0.7769   20.1484    1.2061    1.4354    0.9282    1.0753    1.6169    0.9452    0.3104    1.6257    0.5063;
    1.1463    0.9934    1.7127    1.3288    1.1009    0.7500    1.8122    0.9659    0.4387    0.4901    1.2061   20.8042    0.6692    1.2147    0.2556    0.4273    0.9533    0.8038    0.6669    0.9201;
    0.3094    1.2621    0.8557    1.4767    0.8743    1.2405    0.7641    0.4069    0.3218    1.2374    1.4354    0.6692   21.4447    1.2100    1.3319    0.8505    1.5319    1.2213    0.8596    0.4925;
    0.3401    1.4759    1.0483    0.3089    1.4120    0.5294    0.6867    1.1173    0.6867    1.4242    0.9282    1.2147    1.2100   20.2657    0.1499    0.3693    1.3922    1.1641    0.5964    1.0381;
    0.7166    0.9024    1.1658    1.2620    0.9909    1.6547    0.2524    1.3914    0.5791    1.8563    1.0753    0.2556    1.3319    0.1499   21.7044    1.8459    1.2243    1.8733    0.6266    0.9284;
    0.8166    0.5631    1.1046    0.2964    0.7115    1.6188    0.9425    1.3479    1.6487    0.8203    1.6169    0.4273    0.8505    0.3693    1.8459   21.9388    1.6668    1.2963    0.7660    1.9204;
    1.3572    0.6313    0.7708    1.4958    0.7549    1.2085    0.8304    1.6535    1.2905    1.6617    0.9452    0.9533    1.5319    1.3922    1.2243    1.6668   21.3210    1.7836    1.3574    0.7587;
    1.0606    0.5703    1.3063    0.9076    1.1016    1.4892    0.9719    1.1877    0.9696    0.6575    0.3104    0.8038    1.2213    1.1641    1.8733    1.2963    1.7836   21.1914    0.6664    1.3383;
    1.6403    0.7415    0.7602    1.4337    0.7984    1.3507    0.3054    1.1540    0.8992    1.0534    1.6257    0.6669    0.8596    0.5964    0.6266    0.7660    1.3574    0.6664   21.4394    1.0079;
    1.5378    1.0789    0.8709    1.2517    1.3982    1.6699    0.4213    1.0716    1.3350    1.1121    0.5063    0.9201    0.4925    1.0381    0.9284    1.9204    0.7587    1.3383    1.0079   21.5954]; 

% Define the number of branches of the decoupling
coupledPolynomial.r = 2;

% Define the type of weighted decoupling which should be performed
coupledPolynomial.CPDtype = 'full';

% Define the hyperparameter lambda, only in the case of a rank-deficient covariance matrix
coupledPolynomial.lambda = 1;

% Peform the decoupling process
decoupledPolynomial = DecouplePolynomial(coupledPolynomial);
