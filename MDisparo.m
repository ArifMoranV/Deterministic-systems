clc; clear; close all;
tin=[0 10];
fin = 0.1;
ini = 20;
mval=(fin+ini)/2;
tol = 1e-3;

ops=odeset('RelTol',1e-6,'AbsTol',1e-6);
for i=1:50
y0=[mval,0];
[t,y]=ode45('nlse',tin,y0,ops);
plot(t,(y(:,1)),t,sech(t),'or')
pause(.3)
l=0;
for j=2:length(y(:,1))
k=y(j,1)/abs(y(j,1))+y(j-1,1)/abs(y(j-1,1));
if k==0
l=l+1;
end
end

if abs(y(end,1)) <= tol && l==0
    break
elseif l==0
    fin = mval;
else
    ini = mval;
end
mval=(fin+ini)/2;
end

y(1,1)