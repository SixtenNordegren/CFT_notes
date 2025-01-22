---
id: Contimuum models and the renormalization group
aliases: []
tags: []
---

Previosuly we have considered discrete lattice modles, In order to apply what we have learned about these models and the renormalization group to continuum models (or quantum field theory) we must aqyaint ourselves witha  process called momentum-space renormalization
#### Conspectus
Consider a scalar field $\varphi(\mathbf x)$ in $d$-dimensions. We may perform the following Fourer transform (FT)
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
We can simplify this expression further, and we will do so by treating each term in the action separately. But before we start, the following lemma will be useful:

###### Lemma 1
1.
$$
\varphi\left(-\mathbf x \right) = \int d^dx\tilde\varphi(\mathbf k)e^{-i\mathbf k\cdot \mathbf x}.
$$
*Proof:*

We define the dummy variable $\mathbf x^\prime = -\mathbf x$ and substitute it into the definition of the Fourier transform:
$$
\begin{aligned}
\varphi\left(-\mathbf x\right) &= \varphi\left(\mathbf x^\prime\right);\\
&= \int\left(d\mathbf k\right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k\cdot \mathbf x^\prime};\\
&= \int\left(d\mathbf k\right)\tilde\varphi\left(\mathbf k\right)e^{-i\mathbf k\cdot \mathbf x}.\\
\end{aligned}
$$
Seeing as the integration limits are the same in both cases, we can change the dummy variable back to $\mathbf x$.

2.
$$
\tilde\varphi\left(-\mathbf k\right) = \int d^dx\varphi\left(\mathbf x\right)e^{i\mathbf k\cdot \mathbf x}.
$$
*Proof:*

The proof is identical to that of [Lemma 1.1](#Lemma\%201), but with the roles of $\varphi$ and $\tilde\varphi$ reversed.

This property of the Fourier transform is really just a consequence of the FT being a rotation in phase space. A proper discussion of this would yield this simple lemma superfluous, although such a discussion is beyond the scope of this document.
$$
\begin{aligned}
S\left[\varphi\right] &=\int d^dx\left[\frac12\left(\partial_i\int\left(d\mathbf k \right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k\cdot\mathbf x }\right)\left(\partial_i\int\left(d\mathbf k\right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k\cdot\mathbf x}\right)\right]\\
&= \frac12k_i^2\int d^d x\left[\int \left(d\mathbf k \right)\tilde\varphi(\mathbf k)e^{i\mathbf k\cdot\mathbf x}\int\left(d\mathbf k \right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k\cdot \mathbf x}\right]\\
&= \frac12k_i^2\int d^d x\left[\varphi(\mathbf x)\int\left(d\mathbf k \right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k\cdot \mathbf x}\right]\\
&= \frac12k_i^2\int\left(d\mathbf k \right)\tilde\varphi\left(\mathbf k\right)\int d^dx\varphi(\mathbf x)e^{i\mathbf k\cdot \mathbf x}\\
&= -\frac12k_i^2\int\left(d\mathbf k^\prime \right)\tilde\varphi\left(-\mathbf k^\prime\right)\int d^dx\varphi(\mathbf x)e^{-i\mathbf k^\prime\cdot \mathbf x}\\
&= -\frac12k_i^2\int\left(d\mathbf k^\prime \right)\tilde\varphi\left(-\mathbf k^\prime\right)\tilde\varphi\left(\mathbf k^\prime\right)\\
&= \frac12k_i^2\int\left(d\mathbf k \right)\tilde\varphi\left(\mathbf k\right)\tilde\varphi\left(-\mathbf k\right)\\
\end{aligned}
$$
Here we have used a change of variables $\mathbf k^\prime = -\mathbf k$. The second term in the action has a similar simplification:
$$
\begin{aligned}
S\left[\varphi;r\right] &= \int d^dx\left[\frac12r\left(\int\left(d\mathbf k\right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k\cdot \mathbf x}\right)^2\right]\\
&= \frac12r\int d^dx\left[\int\left(d\mathbf k\right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k\cdot \mathbf x}\int\left(d\mathbf k\right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k\cdot \mathbf x}\right]\\
&= \frac12r\int d^dx\left[\varphi(\mathbf x)\int\left(d\mathbf k\right)\tilde\varphi\left(\mathbf k\right)e^{i\mathbf k\cdot \mathbf x}\right]\\
&= \frac12r\int\left(d\mathbf k\right)\tilde\varphi\left(\mathbf k\right)\int d^dx\varphi(\mathbf x)e^{i\mathbf k\cdot \mathbf x}\\
&= \frac12r\int\left(d\mathbf k\right)\tilde\varphi\left(\mathbf k\right)\tilde\varphi\left(-\mathbf k\right).
\end{aligned}
$$

#### References
1. [Di Francesco, P., Mathieu, P., & Senechal, D. (1997). Conformal field theory. Springer Science & Business Media.](https://www.springer.com/gp/book/9780387947853)
