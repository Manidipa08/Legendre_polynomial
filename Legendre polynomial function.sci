function PL = Legendre (n,x)
    Sum=0
    for m=0:n/2
        denominator= factorial(m)*(2^n)*factorial(n-m)*factorial(n-2*m)
        Sum=Sum+(((-1)^m)*factorial(2*n-2*m)*(x^(n-2*m)))/denominator
    end
    PL=Sum 
endfunction
