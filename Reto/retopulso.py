import numpy as np
from matplotlib import pyplot as plt
from matplotlib import cm

def f(u):
    return 1j*((u)*np.conj(u)*u+(1/2)*df2(u,dt)) ###derivada de tiempo 2

def df2(y,dt):
    N=len(y)
    yp=y*0
    for i in range(1,N-1):
        yp[i]=(y[i+1]-2*y[i]+y[i-1])/dt**2
    yp[0]=yp[1]
    yp[-1]=yp[-2]
    return yp
############################################################################################################
dt = 0.02
dx=(dt**2)/4
ti=-10
tf=10
xf=5




ts=np.arange(ti,tf,dt)
xs=np.arange(0,xf,dx)

u0=np.tanh(ts)
#u0=np.sin(ts)
#u0=np.exp(-ts**2)
#u0=1/np.cosh(ts)


Nx=len(xs)
N=len(ts)
T,X=np.meshgrid(ts,xs)



#us=u0
us=np.ones((Nx,N))*0j
us[0]=u0
#us=np.vstack((us,u0+dt*f(u0)))
us[1]=u0+dx*f(u0)
###us[1]=us[0]+(dt/6)*()
for i in range(1,Nx-1):
    #us=np.vstack((us,2*dt*f(us[i])+us[i-1]))
    us[i+1]=(2*dx*f(us[i])+us[i-1])

fig, ax = plt.subplots(subplot_kw={"projection": "3d"})
#ax.scatter(T,X,us)
surf=ax.plot_surface(T, X, abs(us),cmap=cm.coolwarm,
                       linewidth=0, antialiased=False)

fig.colorbar(surf, shrink=0.5, aspect=5)
plt.xlabel("tiempo")
plt.xlim([ti,tf])
plt.ylim([0,xf])
plt.ylabel("espacio x")
#plt.axis('equal')
plt.show()