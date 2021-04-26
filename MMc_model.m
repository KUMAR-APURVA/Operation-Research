function[Ls, Lq, Ws, Wq, Workstation_Utilization] = MMc_model(lamda, mu, c)
    rho = lamda/mu;
    val = 0;
    for i = 0:c-1
        val = val + (rho.^i)/factorial(i);
    end
    val = val + (rho.^c)/(factorial(c)*(1 - (rho/c)));
    p0 = 1./val;
    Lq = ((rho.^(c+1))*p0)/(factorial(c-1)*((c-rho).^2));
    Ls = Lq + rho;
    Ws = Ls/lamda;
    Wq = Lq/lamda;
    Workstation_Utilization = rho/c;
    
