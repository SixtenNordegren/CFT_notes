---
id: Review on the Renormalization Group
aliases: []
tags: []
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

### References
1. [Perturbative Algebraic Quantum Field Theory and the Renormalization Groups](https://arxiv.org/abs/0901.2038)
