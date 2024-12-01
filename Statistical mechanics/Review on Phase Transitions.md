---
id: Review on Phase Transitions
aliases: []
tags: []
---

- [ ] When studying phase transitions it is useful to split them into two categories. We have the first-order transitions which are characterized by a sudden jump in temperature and energy, this energy is often referred to as latent heat. Secondly have the continuous phase transitions which requires no latent heat. It is worth pointing out that while the phase transitions themselves are continuous, their derivatives need not be.

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
