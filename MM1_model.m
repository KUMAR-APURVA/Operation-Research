function[Ls, Lq, Ws, Wq, Workstation_Utilization] = MM1_model(lamda, mu)
    rho = lamda/mu;
    p0 = 1 - rho;
    Ls = rho/(1 - rho);
    Lq = Ls - rho;
    Ws = Ls/lamda;
    Wq = Lq/lamda;
    Workstation_Utilization = rho;
 
    