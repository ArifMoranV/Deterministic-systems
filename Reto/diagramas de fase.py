#!/usr/bin/env python
# coding: utf-8

# In[2]:


import numpy as np 
import sympy as sp
from matplotlib import pyplot as plt


# In[74]:


li=-100
ls=100
x=np.linspace(li,ls,50)
[X,Y]=np.meshgrid(x,x)


# In[109]:


#vestores 
a=np.random.uniform(low=0,high=100,size=1)
b=np.random.uniform(low=0,high=100,size=1)
c=np.random.uniform(low=0,high=100,size=1)
d=np.random.uniform(low=0,high=100,size=1)
dxdt=a*X+b*Y
dydt=c*X+d*Y
fig, ax = plt.subplots(figsize = (10, 10))
n=np.sqrt(dxdt**2+dydt**2)
#ax.quiver(X,Y,dxdt/n,dydt/n,headlength=1,label=["a=",a[0],b,c,d])
ax.streamplot(X,Y,dxdt/n,dydt/n,color='red')
plt.xlim([li+1,ls-1])
plt.ylim([li+1,ls-1])
plt.legend()
#plt.axis('equal')
ax.grid('on')
plt.show()


# In[ ]:




