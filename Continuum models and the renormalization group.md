---
id: Contimuum models and the renormalization group
aliases: []
tags:
  - topic/renormalization-group
  - topic/continuum-models
  - area/statistical-mechanics
---

Previously, we have considered discrete lattice models, In order to apply what we have learned about these models and the renormalization group to continuum models (or quantum field theory) we must aquatint ourselves with a process called momentum-space renormalization
#### Conspectus
Consider a scalar field $\varphi(\mathbf x)$ in $d$-dimensions. We may perform the following Fourier transform (FT)
$$
\varphi = \int \left(d\mathbf k\right)\tilde \varphi(\mathbf k)e^{i\mathbf k\cdot \mathbf x}
$$
where $\left(d\mathbf k\right) = \frac{d^d k}{(2\pi)^d}$ and $\tilde \varphi(\mathbf k)$ is the Fourier transform of $\varphi(\mathbf x)$. The FT is a unitary transform, which will become important later.
 Consider the action in the partition function of $\varphi^4$ theory [[Symmetries and conservation laws# Active Transformations|Symmetries and conservation laws]] (See also 3.19 in [[1]]):
$$
S\left[\varphi;r,u\right] = \int d^dx\left[\frac12\left(\partial_i\varphi\right)^2 +\frac12r\varphi^2 +\frac14u\varphi^4\right]
$$
can be written in terms of the Fourier transformed field $\tilde \varphi(\mathbf k)$ as
$$
S\left[\tilde \varphi;r,u\right] = \int d^dx\left[\frac12\left(\partial_i\int\left(d\mathbf k\right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k \cdot \mathbf x}\right)^2 + \frac12r\left(\int\left(d\mathbf k \right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k\cdot \mathbf x}\right)^2 + \frac14u\left(\int\left(d\mathbf k\right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k\cdot \mathbf x}\right)^4\right].
$$
We can simplify this expression further, and we will do so by treating each term in the action separately. We begin by noting that $\varphi$, and consequently $\partial\varphi$, are real-valued functions. This tells us that each term is self-dual, i.e. $\partial\varphi(\mathbf x)\left(\partial\varphi(\mathbf x)\right)^* = \partial\varphi(\mathbf x)\partial\varphi(\mathbf x)$. After making this observation we go on to express the kinetic term of the action as,
$$
\begin{aligned}
S\left[\varphi\right] &=\int d^dx\left[\frac12\left(\partial_i\int\left(d\mathbf k \right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k\cdot\mathbf x }\right)\left(\partial_i\int\left(d\mathbf p\right)\tilde\varphi\left(\mathbf p\right)e^{i\mathbf p\cdot\mathbf x}\right)\right];\\
&= \frac12k_ip^i\int d^d x\left[\int \left(d\mathbf k \right)\tilde\varphi(\mathbf k)e^{i\mathbf k\cdot\mathbf x}\int\left(d\mathbf p \right)\tilde\varphi\left(\mathbf p\right)e^{i\mathbf p\cdot \mathbf x}\right];\\
&= \frac12k_ip^i\int \left(d\mathbf k\right)\int\left(d\mathbf p\right)\tilde\varphi\left(\mathbf k\right)\tilde\varphi\left(\mathbf p\right)\int d^dx\exp\left(i\mathbf x (\mathbf k +\mathbf p)\right);\\
&= \frac12k_ip^i\int \left(d\mathbf k\right)\int\left(d\mathbf p\right)\tilde\varphi\left(\mathbf k\right)\tilde\varphi\left(\mathbf p\right)\delta(k+p);\\
&= \frac12k^2\int \left(d\mathbf k\right)\tilde\varphi\left(\mathbf k\right)\tilde\varphi\left(\mathbf -\mathbf k \right).\\
\end{aligned}
$$
In the first step, we have changed the name of the variable in the second integral to enhance clarity. The mass term of the action can be calculated with identical steps. With the result,
$$
S\left[\varphi;r\right] = \frac12r\int d(\mathbf k)\tilde\varphi(\mathbf k)\tilde\varphi(-\mathbf k).
$$
The final term becomes
$$
\begin{align}
S\left[\varphi; u\right] &= \frac14u\int dx \left[\int d(\mathbf k_1)\tilde\varphi(\mathbf k_1)e^{i \mathbf k_1\cdot \mathbf x}\int d(\mathbf k_2)\tilde\varphi(\mathbf k_2)e^{i \mathbf k_2\cdot \mathbf x}\int d(\mathbf k_3)\tilde\varphi(\mathbf k_3)e^{i \mathbf k_3\cdot \mathbf x}\int d(\mathbf k_4)\tilde\varphi(\mathbf k_4)e^{i \mathbf k_4\cdot \mathbf x}\right];\\
&=\frac14u\int\left(d\mathbf k_1\right)\left(d\mathbf k_2\right)\left(d\mathbf k_3\right)\left(d\mathbf k_4\right)\tilde\varphi(\mathbf k_1)\tilde\varphi(\mathbf k_2) \tilde\varphi(\mathbf k_3) \tilde\varphi(\mathbf k_4)\int d^dx\exp\left\{i \mathbf x \left(k_1 + k_2 + k_3 + k_4\right)\right\};\\
&=\frac14u\int\left(d\mathbf k_1\right)\left(d\mathbf k_2\right)\left(d\mathbf k_3\right)\left(d\mathbf k_4\right)\tilde\varphi(\mathbf k_1)\tilde\varphi(\mathbf k_2) \tilde\varphi(\mathbf k_3) \tilde\varphi(\mathbf k_4)\delta(k_1 + k_2 + k_3 + k_4);\\
&=\frac14u\int\left(d\mathbf k_2\right)\left(d\mathbf k_3\right)\left(d\mathbf k_4\right)\tilde\varphi(\mathbf -k_2 -k_3-k_4)\tilde\varphi(\mathbf k_2) \tilde\varphi(\mathbf k_3) \tilde\varphi(\mathbf k_4).\\
\end{align}
$$

So finally we are able to write down the full Fourier transformed $\varphi^4$ action
$$
S\left[\varphi;r,u\right] = \frac12\int\left(d\mathbf k\right)\tilde\varphi(\mathbf k)\tilde\varphi(-\mathbf k)\left(k^2 + r\right) + \frac14u\int\left(d\mathbf k_2\right)\left(d\mathbf k_3\right)\left(d\mathbf k_4\right)\tilde\varphi(\mathbf -k_2 -k_3-k_4)\tilde\varphi(\mathbf k_2) \tilde\varphi(\mathbf k_3) \tilde\varphi(\mathbf k_4).
$$

After this somewhat lengthy tangent, we are finally in a position to discuss the renormalization transformation. Previously in our [[Review on renormalization group|review on the renormalization group]] document, we have discussed how the renormalization transform emerges as a map between the coupling constants of one lattice structure to another. It is the repeated application of this map that generates the renormalization group flow.

For continuum models, we have to reconstruct part of this procedure. Firstly, Instead of working with the partition function, we will work with the action, or the configuration energy in the classical case. Furthermore, the act of renormalizing a theory (application of the renormalization map to a theory), consists of two steps:
1. Introduce a cutoff $\Lambda$ to the theory.
2. Rescale the effective theory described by the cuttoff action.

This procedure is known as the Wilson-Kadanoff renormalization scheme, we will go on to give a brief discussion about it, although, as is often the case, an exhaustive treatment of the topic is beyond the scope of this project. For a more detailed treatment see either [2](#references) or [3](#references).

#### Wilson-Kadanoff renormalization scheme
As we have mentioned before, the first step in the Wilson-Kadanoff renormalization scheme is to introduce a cutoff $\Lambda$. Specifically, we introduce $\Lambda$ in momentum space, meaning that for each $\mathbf k$ in $\varphi(\mathbf k)$ we are restricted to the region where $|\mathbf k| < \Lambda $.

The path integral measure is left invariant under a FT, meaning,
$$
\left[d\varphi\right]_\Lambda = \prod_{\mathbf x}\varphi(\mathbf x) = \prod_{|\mathbf k|< \Lambda} \tilde\varphi(\mathbf k).
$$
This is due to the FT being unitary. We go on to define a dilation factor $s > 0$ and using it to create a separation in the fields. Looking at the fields $\varphi(\mathbf k)$, corresponding to momenta in the region $\Lambda/s < \mathbf k <\Lambda$ we denote them "fast modes", with the remaining fields within the range $\mathbf k <\Lambda/s$ as slow modes. We go on to integrate out the fast modes of the action i.e.,
$$
\exp S^\prime[\varphi; u_i]=\int \prod_{\Lambda/s<\mathbf k< \Lambda}d\tilde\varphi(\mathbf k)\exp S[\varphi;u_i],
$$
leaving us with an effective action $S^\prime[\varphi;u_i]$.

Now, *we are only interested in the slow modes*. The reason we are happy to make such a restriction is because we are acknowledging the limits of our theory. Placing an arbitrary restriction on how high the energies of our theories can get is a way of saying that we do not expect the theory described by an action to be accurate to arbitrarily high energies. This allows us to study phenomena in regions our models are actually relevant, without suffering the errors induced from momenta that are far beyond the accuracy of what we would expect our theory to have.

Now, the second part of the renormalization process is to rescale our fields,
$$
\mathbf k \to \mathbf k^\prime s; \,\, \mathbf x \to \mathbf x^\prime = \mathbf x/s.
$$
The effects these scaling transformations have on the field are
$$
\varphi(\mathbf x)\to\varphi^\prime(x/s)=s^\Delta\varphi(\mathbf x);\,\, \tilde\varphi^\prime(s\mathbf k)=S^{\Delta -d}\tilde\varphi(\mathbf k).
$$

Now, assuming we have chosen an appropriate scaling dimension $(\Delta)$, we write the following,
$$
S^\prime[\varphi]=S[\varphi; u^\prime_i].
$$
The number of parameters $(u_i)$ we would need for this equation to hold is infinite. However, irrelevant terms can safely be removed.

This equation generates a set of curves $u_i(s)$ on the parameter space. Each point on this curve necessarily shares the dynamics of $S^\prime[\phi]$.

The result of this procedure, then, is a set of coupled flow equations
$$
\frac{du_i}{d\ln(s)}=\beta_i(u_j).
$$
Here $\beta_j$ is called the "beta function" corresponding to $u_i$.

Like before, a fixed point is a point invariant under the renormalization transformation i.e.
$$
\beta_i(u^*_i)=0.
$$

##### Example: the free boson

The simplest example that we can start with is the free boson, given by the action,
$$
S[\varphi; \mathbf r] = \frac12\int_\Lambda (d\mathbf k)\tilde\varphi(-\mathbf x)\tilde\varphi(\mathbf x)(\mathbf k^2+\mathbf r).
$$
Integrating out the fast modes we see,
$$
\begin{align}
\exp\left(S^\prime[\varphi; \mathbf r]\right) &= \int\prod_{\Lambda/s < |\mathbf k | < \Lambda}(d\mathbf k)\exp\left(S[\varphi; \mathbf r]\right); \\
&= \int\prod_{\Lambda/s < |\mathbf k | < \Lambda}\left(d\mathbf k\right)\exp\left(\frac12\int_\Lambda (d\mathbf k)\tilde\varphi(-\mathbf k)\tilde\varphi(\mathbf k)(\mathbf k^2+\mathbf r)\right); \\
&= \int\prod_{\Lambda/s < |\mathbf k | < \Lambda}\left(d\mathbf k\right)\exp\left(\frac12\int_\Lambda (d\mathbf k)\tilde\varphi(-\mathbf k)\tilde\varphi(\mathbf k)(\mathbf k^2+\mathbf r )\right); \\
&= \int\prod_{\Lambda/s < |\mathbf k | < \Lambda}\left(d\mathbf k\right)\exp\left(\frac12\int_{\Lambda/s} (d\mathbf k)\tilde\varphi(-\mathbf k)\tilde\varphi(\mathbf k)(\mathbf k^2+\mathbf r) + \frac12\int_{\Lambda/s < |\mathbf k |<\Lambda} (d\mathbf k)\tilde\varphi(-\mathbf k)\tilde\varphi(\mathbf k)(\mathbf k^2+\mathbf r)\right);\\
&= \int\prod_{\Lambda/s < |\mathbf k | < \Lambda}\left(d\mathbf k\right)\exp\left(\frac12\int_{\Lambda/s} (d\mathbf k)\tilde\varphi(-\mathbf k)\tilde\varphi(\mathbf k)(\mathbf k^2+\mathbf r) \right)\exp\left( \frac12\int_{\Lambda/s < |\mathbf k |<\Lambda} (d\mathbf k)\tilde\varphi(-\mathbf k)\tilde\varphi(\mathbf k)(\mathbf k^2+\mathbf r)\right); \\
&= \exp\left(\frac12\int_{\Lambda/s} (d\mathbf k)\tilde\varphi(-\mathbf k)\tilde\varphi(\mathbf k)(\mathbf k^2+\mathbf r) \right)\int\prod_{\Lambda/s < |\mathbf k | < \Lambda} \left(d\mathbf k\right)\exp\left( \frac12\int_{\Lambda/s < |\mathbf k |<\Lambda} (d\mathbf k)\tilde\varphi(-\mathbf k)\tilde\varphi(\mathbf k)(\mathbf k^2+\mathbf r)\right);\\
&= C\exp\left(\frac12\int_{\Lambda/s} (d\mathbf k)\tilde\varphi(-\mathbf k)\tilde\varphi(\mathbf k)(\mathbf k^2+\mathbf r) \right).
\end{align}
$$
Meaning that the fast modes comes out to a constant outside of the partition function. Notice that we can do this because of the fast and slow modes are decoupled. Since different values of the wave vector does not mix in the action. The slow mode action is then
$$
\begin{align}
S^\prime[\varphi] &= \frac12\int_{\Lambda/s} (d\mathbf k)\tilde\varphi(-\mathbf k)\tilde\varphi(\mathbf k)(\mathbf k^2+\mathbf r)(\mathbf k^2 + \mathbf r);\\
&= \frac12\int_{\Lambda}s^{-d}\left(d\mathbf k^\prime\right)\tilde\varphi(-\mathbf k^\prime/s)\tilde\varphi\left(\mathbf k^\prime/s\right)((\mathbf k^\prime)^2/s^2 + \mathbf r);\\
&= \frac12\int_{\Lambda}s^{-d -2}\left(d\mathbf k^\prime\right)\tilde\varphi(-\mathbf k^\prime/s)\tilde\varphi\left(\mathbf k^\prime/s\right)((\mathbf k^\prime)^2 + s^2\mathbf r).
\end{align}
$$
We can then use the scaling relation, $\tilde\varphi^\prime(s\mathbf k) = s^{\Delta-d}\tilde\varphi(\mathbf k)$, with the dummy variable $\mathbf p = s\mathbf k$, giving us
$$
s^{d-\Delta }\tilde\varphi^\prime(\mathbf p) =\tilde\varphi(\mathbf p/s).
$$
Meaning that we can rewrite the effective action as
$$
S[\varphi] = \frac12\int_{\Lambda}s^{d - 2\Delta -2}\left(d\mathbf k^\prime\right)\tilde\varphi(-\mathbf k)\tilde\varphi\left(\mathbf k\right)((\mathbf k^\prime)^2+s^2\mathbf r).
$$

We immediately notice that $S^\prime$ has the same form as $S$ for $r=0,\,\, \Delta = \frac12d-1$. Thus, the massless r=0 model is a fixed point of the renormalization group.
##### Dimensionsanalyse
Consider now an action outside a fixed point $S[\phi]$. We can write this action as
$$
S[\phi] = S_0[\phi]+\sum_iu_i\int d\mathbf x O(x).
$$
Here $S_0$ is an action at a fixed point, $u_i$ are coupling constants, and $O(x)$ is some operator. Under a scale renormalization group transform the cation changes
$$
S^\prime[\phi] = S_0[\phi]+\sum_iu^\prime_i(s)\int d\mathbf x O_i(x).
$$

Here, only $S_0$ is invariant under the transform, and the new coupling constants $u_i^\prime(s)$ expressing the transformed action in terms of the old operators $(O_i.(x))$. In principle, the $u^\prime_i(s)$s can have complex behaviours as functions of $s$. This complication is inherited from the integration of the fast modes. However, we shall go on assuming that any contribution from such behaviour is negligible due to the coupling constants themselves being arbitrarily small.

We can define the new coupling constants $u^\prime_i(s)$ through the following procedure. Consider the transformed operator
$$
O^\prime_i(x) = s^\Delta_i O_i(sx).
$$
Written in terms of the series, it becomes
$$
\begin{align}
u_i\int dx O^\prime_i(x)&=u_i\int dx s^{\Delta_i}O_i(sx)\\
&=u_is^{\Delta_i}s^{-d}\int dx^\prime O_i(x^\prime)\\
&=u_is^{\Delta_i-d}\int dx^\prime O_i(x^\prime)\\
\end{align}
$$
Now, the transformed integral is identical to the non-transformed integral, since the cutoff is only present in momentum space and the limits at $\pm\infty$ remain unaffected. This leads us to define
$$
u_i^\prime = u_is^{d-\Delta}.
$$
Here terms with $\Delta > d$ will be *irelevenat*, $\Delta< d$ *relevant*, and $d=\Delta$ *marginal*.
#### References
1. [Di Francesco, P., Mathieu, P., & Senechal, D. (1997). Conformal field theory. Springer Science & Business Media.](https://www.springer.com/gp/book/9780387947853)
2. [A. Zee, Quantum Field Theory in a Nutshell, Princeton University Press, 2003.](https://doi.org/10.1093/acprof:oso/9780199227198.001.0001)
3. [Lectures on Phase transitions and the renormalization group, by Nigel Goldenfeld, Westview Press, 1992.](https://doi.org/10.1093/acprof:oso/9780199227198.001.0001)
