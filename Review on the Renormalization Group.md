---
id: Review on the Renormalization Group
aliases: []
tags:
  - topic/renormalization-group
  - type/review
---

### Introduction

The renormalization group (RG) is a deep topic on its own that deserves a rigorous treatment, however such a treatmeant is beyond the scope of this review. The purpose of this review is to provide an introduction to how the renormalization group can arise from different block constructs in lattice models and a few applications to QFT. For those interested in a more detailed treatment of the RG we recommend [[1].](#References)

Previously in [[Review on statistical mechanics]] we have studied how the construction of block-spins of the Ising model. We now seek to generalize this notation further.
Consider a d-dimensional lattice with $N$ spins $\\sigma_l$ and the Hamiltonian
$$
H\left(\mathbf J, [s], N\right) = J_0 + J_1 \sum_{i}^N \sigma_i + J_2 \sum_{\braket{i,j}}^{(1)} \sigma_i\sigma_j + J_3 \sum_{\braket{i,j}}^{(2)}\sigma_i\sigma_j +\ldots
$$
Here, the vector $\mathbf J$ represents the collected coupling constants $(J_0, J_1, \ldots)$, $\sigma_i$ - the spins, the $\braket{i,j}$ denotes the sum over nearest neighbors, and the superscript $(1)$ and $(2)$ denote the sum over next-nearest neighbors and so on. Other types of couplings could also be included.
We go on to define the block spins $\Sigma_I$, each degree of freedom within each block are denoted $\xi_i$. Meaning that our previous d.o.f.s can be written as $[s] = [\Sigma_I] + [\xi_I]$.
We write the partition function in therms of these variables as
$$
Z\left(\mathbf J, N, \right)  = \sum_{[\Sigma][\xi]}\exp \left(-H\left(\mathbf J, [\Sigma], [\xi], N\right)\right)
$$
where the temperature has been absorbed into the coupling constants ($\mathbf J$). Since the Hamiltonian is an observable and hence diagonalizable, we can write the block-Hamiltonian as the regular Hamiltonian ($H$) when tracing over $[\xi]$ meaning,
$$
\begin{aligned}
Z\left(\mathbf J, N, \right)  &= \sum_{[\Sigma]}\exp \left(-H^\prime\left(\mathbf J, [\Sigma], Nr^{-d}\right)\right);\\
&= Z\left(\mathbf J^\prime, Nr^{-d} \right).
\end{aligned}
$$
Notice here that we count $Nr^{-d}$ blocks in the new lattice, the number of blocks is reduced by a factor of $r^d$ due to its assumed cube shape. The map $\mathbf T (\mathbf J) \to \mathbf J^\prime$ is a surjective map that generates the renormalization group. We use the word "generates" here loosely, what we mean exactly is that successive iterations of this map on the coupling constants,
$$
J^{(n)} = \mathbf T^{\circ n}(J^{(0)}),
$$
where with $\mathbf T^{\circ n}$ we mean the n-fold composition of the map $\mathbf T$. This map creates a sequence of points that we call renormalization group. A system is often critical at more than just a single point in coupling space, and this surface of critical points is called the *critical surface*.

Another property of them RG map that we have not yet mentioned is that it preserves the symmetry of the preceding system (See page 171 of [[2].](#References)). This means that points on the critical surface, transform to other points on the critical points on the surface under RG transformation. Or, in other words, points on the critical surface stay on the critical surface under RG [flow](../Math/%27Differential%20gemetry%27.md#def-flow).

In general, the RG map ($T$) in not exactly well behaved and therefore quite difficult to work with. However, as we shall see, the only points that we are interested in are points close to fixed points. Therefore we look to linearize $T$, we define $\delta\mathbf J = \mathbf J - \mathbf J_c$,
$$
\begin{aligned}
\mathbf T(\mathbf J_c + \delta\mathbf J) &= \mathbf T(\mathbf J_c) + \frac{\partial T_i}{\partial J_j}\delta \mathbf J;\\
\mathbf T (\mathbf J) &= \mathbf J_c + \mathbf A \delta \mathbf J;\\
\mathbf J^\prime &= \mathbf J_c + \mathbf A \delta \mathbf J;\\
 \delta \mathbf J^\prime &= \mathbf A \delta \mathbf J.
\end{aligned}
$$
Here we have defined $\mathbf A$ to represent the matrix $\frac{\partial T_i}{\partial J_j}$, we have also defined $\delta \mathbf J^\prime = \mathbf J^\prime - \mathbf J_c$. The matrix $\mathbf A$ is diagonalizable and has eigenvalues $\lambda_i$ and eigenvectors $\mathbf u_i$, respectively, or in other words,
$$
\delta\mathbf J = \sum_i t_i \mathbf u_i
$$
we can write the transformed $\delta \mathbf J^\prime$ as
$$
\begin{align}
\delta \mathbf J^\prime = A\sum_i t_i \mathbf u_i;\\
\delta \mathbf J^\prime = \sum_i \lambda_i t_i \mathbf u_i.
\end{align}
$$
As it turns out, the value of the eigenvalues determine which components either grows, shrinks or stays the same ruding RG-[flow](../Math/%27Differential%20gemetry%27.md#def-flow) (It is customary to write the eigenvalues as exponents, i.e. $r^{y_i}$). The different eigenvalues are categorized as relevent, irrelevant or marginal respectively. We have summarized their behavior in the table below.

<center>

| $\lambda_i$| $y_i$ | Behavior |
|------------|-------|----------|
| $\lambda_i > 0$ | $y_i > 0$ | Relevant |
| $\lambda_i < 0$ | $y_i < 0$ | Irrelevant |
| $\lambda_i = 0$ | $y_i = 0$ | Marginal |

</center>

### Ising Model on a triangular lattice

Consider the Ising model on a triangular lattice, the Hamiltonian is given by

### References
1. [Perturbative Algebraic Quantum Field Theory and the Renormalization Groups](https://arxiv.org/abs/0901.2038)
2. [Wilson - The Renormalization Group and the $\epsilon$-Expansion](https://doi.org/10.1016/0370-1573(74)90023-4)
