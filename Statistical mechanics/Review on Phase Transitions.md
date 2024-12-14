---
id: Review on Phase Transitions
aliases: []
tags: []
ID: Review on Phase Transitions
---
************
 When studying phase transitions it is useful to split them into two categories. We have the first-order transitions which are characterized by a sudden jump in temperature and energy, this energy is often referred to as latent heat. Secondly have the continuous phase transitions which requires no latent heat. It is worth pointing out that while the phase transitions themselves are continuous, their derivatives need not be.

Consider the [[Review on statistical mechanics#The Ising model |Ising model]] we recall from our discussion of the model that its Hamiltonian is given by 
$$
H= - J \sum^N_{\braket{i j}}\sigma_i\sigma_j - h \sum_i^N\sigma_i.
$$
We define a partition function for some finite amount of lattice sites
$$
z = \exp(-\beta\varepsilon).
$$
I reemphasize for the sake of clarity, that $z$ is the partition function for a small subgroup of points rather then for the whole system, which is still denoted $Z$.


In the zero field limit $(h\to 0)$ we can choose $\varepsilon = J$ and the highest energy configuration (the one where all spins align) becomes 
$$
\begin{align}
H &= \varepsilon \sum^N_{\braket{ij}} \sigma_i\sigma_j\\
  &= \varepsilon \sum^N_{\braket{ij}} 1\\
  &= \varepsilon \sum^N_{ij} \delta(1-|i-j|)\\
  &= \varepsilon 2N \quad\text{One } \forall\, i > j\text{, and one } \forall\, j > i.
\end{align} 
$$
Each configuration contributes a power of $z$ to the partition function. So the partition function can be written as a polynomial of degree $2N$ in $z$.

The singularities of the free energy $(F)$ w.r.t. this polynomial can only happen at its roots. They all exist in the complex plane, which is comfortably out of reach for a finite number of nodes. However, as $N\to\infty$ the roots form curves of solutions which may intersect the real axis, and the critical behaviour takes place at those singularities. 

Critical exponents are parameters that can characterize the phase transitions at these singularities. Temperature is often chosen as the quantity of interest to generalize said behaviour, but it need not be. There are other macroscopic parameters that can be used as well such as pressure or an external magnetic field. 

The critical exponents are defined as follows 
$$
\begin{align}
C &\sim |T-T_c|^{-\alpha},\\
M &\sim |T-T_c|^\beta,\\
\chi &\sim |T-T_c|^{-\gamma},\\
\text{and } \xi &\sim |T-T_c|^{-\nu}.
\end{align}
$$
Where $C$ is the specific heat, $M$ is the magnetization, $\chi$ is the susceptibility, and $\xi$ is the correlation length. The critical exponents are universal, meaning that they are independent of the microscopic details of the system.

Where the exponents used in above equations are given as fractions in the table below.
$$
\begin{array}{|c|c|c|c|}
\hline
\text{Quantity} & \text{Symbol} & \text{Critical exponent} & \text{Value} \\
\hline
\text{Specific heat} & C & \alpha & 0 \\
\text{Magnetization} & M & \beta & 1/8 \\
\text{Susceptibility} & \chi & \gamma & 7/4 \\
\text{Correlation length} & \xi & \nu & 1 \\
\hline
\end{array}
$$

### Scaling hypothesis
The critical exponents we have previously discussed can be related by a "scaling hypothesis".
$$
f(\lambda^a t, \lambda^b h) = \lambda f(t,h), 
$$
i.e. there exsists exponents $a$ and $b$ such that the scaled parameters, $\lambda^a t$ and $\lambda^b h$, are related to the original parameters $t$ and $h$ by a scaled function $f$ dependant only on the unscaled parameters. The parameter $t$ is the reduced temperature, $t = (T-T_c)/T_c$, and $h$ is the external magnetic field which we are familiar with from our discussion of the [[Review on statistical mechanics#The Ising model |Ising model]]. The function $f$ in question is the free-energy-density or free-energy-per-site, depending on the weather the system one consider is continuous or discrete.

Lets consider the function $t^{-\frac1a}f(t,h)$, (from now on we will refer to $f(t,h)$ as $f$ for brevity), using the scaling hypothesis that is invariant under the scalings $t\to\lambda^a t$ and $h\to\lambda^b h$. We can write the function as
$$
\begin{align}
t^{-\frac1a}f(t,h) \to \left(\lambda^a t\right)^{-\frac1a}f(\lambda^a t,\lambda^b h) &= \left(\lambda^{-1}t\right)^{-\frac1a}\lambda f(t,h),\\
&= t^{-\frac1a}f(t,h).
\end{align}
$$

According to di Francesco et al. this is sufficient to conclude that the composite function $t^{\frac1a}f$ is dependant only on the scale invariant variable $y=\frac{h}{t^{b/a}}$. In other words
$$
t^{\frac1a}f = g(y).
$$

In the creation of this composite function we have used a small trick. Simply by solving for f we have heavily constrained its form. 
$$
f = t^{-\frac1a}g(y).
$$

We will go on to investigate the macroscopic properties that are key to critical exponents.
Starting with spontaneous magnetization, it can be written as,
$$
\begin{align}
M &= -\frac{\partial f}{\partial h}\left |_{h=0}\right.;\\
  &= -\frac{\partial}{\partial h}\left(t^{-\frac1a}g\right)\left |_{h=0}\right.;\\
  &= -t^{-\frac1a}\frac{\partial y}{\partial h}\frac{\partial g}{\partial y}\left |_{h=0}\right.;\\
  &= -t^{-\frac1a}\frac1{t^{b/a}}\frac{\partial g}{\partial y}\left|_{h=0}\right.;\\
    &= -t^{-\frac{(b+1)}{a}}\frac{\partial }{\partial y}\left.\left(g(0) + g^\prime (0)y + \frac{g^{\prime\prime}(0)y^2}{2}+\dots \right)\right |_{h=0};\\
 &= -t^{-\frac{(b+1)}{a}}g^\prime(0). \text{ I am off by a minus sign. I can't tell where he gets it from.}
\end{align}
$$

The magnetic suceptibility can be written as
$$
\begin{align}
\chi &= \left.\frac{\partial M}{\partial h}\right |_{h=0};\\
    &= \left.-\frac{\partial^2}{\partial h^2} f\right |_{h=0};\\
    &= -t^{\frac1a}\frac{\partial}{\partial h}\left (\frac{\partial y}{\partial h}\frac{\partial g}{\partial y}\right)\left |_{h=0}\right.;\\
&= -t^{\frac1a}\frac{\partial }{\partial h}\left(\frac1{t^{b/a}}\frac{\partial g}{\partial y}\right)\left |_{h=0}\right.;\\
&= -t^{(1-b)/a}t^{-b/a}\frac{\partial^2 g}{\partial y^2}\left |_{h=0}\right.;\\
&= -t^{(1-2b)/a}\frac{\partial^2 }{\partial y^2}\left.\left(g(0) + g^\prime (0)y + \frac{g^{\prime\prime}(0)y^2}{2}+\dots \right)\right |_{h=0};\\
&= -t^{(1-2b)/a}g^{\prime\prime}(0).
\end{align}
$$

Lastly, the specific heat can be written as
$$
\begin{align}
C_v &= \left. -T\frac{\partial^2 f}{\partial T^2}\right |_{h=0}\\
    &= \left. -T\frac{\partial^2}{\partial T^2}t^{-\frac1a}g\right |_{h=0}\\
&= \left. -T\left(\frac{\partial t}{\partial T}\right)^2\frac{\partial^2  }{\partial t^2}t^{-\frac1a}g\right |_{h=0}\\
&= \left. -\frac{T}{T_c^2}\frac{\partial}{\partial t}\left(\frac{t^{\frac1a - 1}}{a}g + t^{\frac1a}\frac{\partial }{\partial t}g(y)\right)\right |_{h=0}\\
&= \left. -\frac{T}{T_c^2}\left[\left(\frac1a -1 \right)\left(\frac1a\right)t^{\frac1a - 2}g + \frac2at^{\frac1a - 1}\frac{\partial }{\partial t}g(y) + t^{\frac1a}\frac{\partial^2 }{\partial t^2}g(y)\right]\right |_{h=0}\\
\end{align}
$$

We proceed to compute the Jacobian of the transformation $t\to y$ is given by,
$$
\left(\frac{\partial t}{\partial y}\right) = -\frac{b h}{at^{\frac{b}{a}+1}}.
$$
This allows us to compute the derivative terms in the specific heat,
$$
\begin{align}
\left.\frac{\partial }{\partial t}g(y)\right |_{h=0} &= \left.-\frac{b h}{at^{\frac{b}{a}+1}}\frac{\partial }{\partial y}g(y)\right |_{h=0}\\
&= 0.
\end{align}
$$
The second derivative term is given by
$$
\begin{align}
\left.\frac{\partial^2 }{\partial t^2}g(y)\right |_{h=0} &= \left.\frac{\partial}{\partial t}\left(\frac{b h}{at^{\frac{b}{a}+1}}\frac{\partial }{\partial y}g(y)\right)\right |_{h=0}\\
&= \left. \frac{bh}{a}\left(\left(\frac{b}{a}-1\right) \frac{1}{t^{\frac{b}{a}-2}}\frac{\partial }{\partial y}g(y) - \frac{1}{t^{\frac{b}{a}-1}}\frac{\partial}{\partial y} g(y) \right)\right |_{h=0}\\
&= 0.
\end{align}
$$
Substituting these results back into the specific heat we find that the only part that survives is the first term, which is given by
$$
\begin{align}
C_v &= \left. -\frac{T}{T_c^2}\left[\left(\frac1a -1 \right)\left(\frac1a\right)t^{\frac1a - 2}g(y) + \frac2at^{\frac1a - 1}\frac{\partial }{\partial t}g(y) + t^{\frac1a}\frac{\partial^2 }{\partial t^2}g(y)\right]\right |_{h=0}\\
&= \left. -\frac{T}{T_c^2}\left[\left(\frac1a -1 \right)\left(\frac1a\right)t^{\frac1a - 2}g(y)\right]\right |_{h=0}\\
&= -\frac{T}{T_c^2}\left[\left(\frac1a -1 \right)\left(\frac1a\right)t^{\frac1a - 2}g(0)\right]\\
\end{align}
$$


$$
-{\left(\frac{T}{\mathit{Tc}} - 1\right)}^{-\frac{2 \, b}{a} + \frac{1}{a}} \mathrm{D}_{0, 0}\left(g\right)\left(\frac{h}{{\left(\frac{T}{\mathit{Tc}} - 1\right)}^{\frac{b}{a}}}\right)
$$
************
# References
1. Di Francesco, P., Mathieu, P., & Senechal, D. (1997). Conformal Field Theory. Springer-Verlag Berlin Heidelberg.
2. Goldenfeld, N. (1992). Lectures on Phase Transitions and the Renormalization Group. Addison-Wesley Publishing Company.

