println("Hello world")

println("Hello world"*"jjj")## concatenacion

##calculadora
x=2+2
2^22
3/2
3%2

ϕ=π/2
cos(ϕ)

2ϕ
sech(ϕ)
z=3+2im
real(z)
angle(z)#phase
exp(im*π)
cis(π)#cos+i*sin## 

#vectores
b=[1,2,2]
c=[2;3;5]
M=[1 1 1; 5 5 5]

M*b
c-b
using LinearAlgebra

norm([1,1,1])
M2=[1 2 3; 1 3 4;4 5 6]
eigvals(M2)
b[1]
M[1,1]
M[1,:]#regresa vector columna
transpose(M[1,:])
M[1:1,:]


#Broadcatsing
B=[1 3 5; 5 6 7; 8 9 10]
B.*B

B.+10


x=[0,π/2,π]
cos.(x)

rand(10)
rand(3,3)
length(M)
(m,n)=size(M)
sum(M)
sum(M,dims=1)#Columnas
sum(M,dims=2)

##Operaciones logicas
& #AND
&& ##false
3!=2
x=2
if x>5
    println("xd")
else
    print("kk")
end

x>5 ? true : false
typeof(3)
x=[1,1,1]#vector de enteros
x[1]=3.0

x=[1,1,1.]
x[1]=3.0
sqrt(complex(-1))


x=-3:0.01:3
collect(x)

collect(range(-3,3,length=200))#linspace
#Fraccions
3//2+5//6

for i in -3:3
    println("u")
end

###Funciones
f(x)=3x^2

f(3)

function jjjf(x,y,z)
    x*y*z #resgresa ultima linea que se evaluo
end

jjjf(1,3,4)

x=[2,3,4]
jjjf(x...)


using Plots
gr()
x=-π:0.01:π
fvaal(x)=sech.(x)
plot(x,fvaal,title="ponhco")
plot!(x,sin.(x),label="bbb")



x=-3:0.1:3
y=-3:0.1:3
f(x,y)=exp(-x^2-y^2)
contourf(x,y,f)
