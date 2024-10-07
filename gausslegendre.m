function gausslegendre(li,ls,n,funx)
     %sym x
     f=sym(funx)
     syms x
     
     a=li
     b=ls
    
    
    ww=sym('w',[1 n])
    xs=sym('x',[1 n])
    
    %Polinomio de legendre
    Lp=legendreP(n,x)
    r=sym(roots(sym2poly(Lp)))%Raices x_i
    Lpp=diff(Lp)


    %%%Pesos w_i
    ws=2./((1-r.^2).*subs(Lpp,x,r).^2) %w_i

    fs=subs(f,x,(((b-a)*r)+(b+a))/2)%Vector de fs;

    I=vpa(dot(ws,fs)*((b-a)/2))

    %%Integral simbolica 

    Ir=vpa(int(f,x,a,b))

    %%Error
    Eabs=abs(I-Ir)

end