//Date : 02/12/21
//Aim : To generate and plot Legendre Polynomials
clc
clear
tic()
x=-1:0.01:1
exec('C:\Users\MANIDIPA BANERJEE\Desktop\SEM III MP LAB\legendre polynomial\Legendre polynomial function.sci', -1)
for n=0:11
    sol(n+1,:)=Legendre (n,x)
    //subplot(3,3,n+1)
    //plot(x,sol)
    //disp("polynomials : ",sol)
end
In_built=legendre(0:11,0,x)
for r=1:12
    subplot(3,4,r)
    title("Legendre polynomials for order n = "+string(r-1))
    title color Red
    title fontsize 4
    xlabel("X")
    xlabel color magenta fontsize 4
    ylabel("P(X)")
    ylabel color green fontsize 4
    //subplot(3,3,r)
    plot(x,sol(r,:),'*g')
    plot(x,In_built(r,:),'m')
    legend(["using recursion formula";"using inbuilt command"])
end
time = toc()
disp("time(milisecond) : ",time)
