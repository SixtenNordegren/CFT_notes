In statistical mechanics, the goal is to treat systems that consists of a large number of particles $(N)$. One does this by specifying macroscopic properties of the system as a whole e.g. Temperature $(T)$, Number of particles $(N)$, or Free energy $(F)$ and so on.

Such properties are undeniably determined by the configuration of its constituent parts i.e. a micro state.

The number of micro states are typically exceedingly high, and in order to feasibly predict any macroscopic properties, one replaces the exact state with a statistical distribution that represents the underlying nature of the system. In the context of statistical mechanics these distributions are referred to as ensembles.

Picking a suitable ensemble for the system at hand is of coerce crucial and we proceed to give a few relevant examples.

### The Ising model


One of the simplest statistical models one can find is the Ising model. Despite its simplicity it does accurately capture some aspects of physical systems that we face in reality. An example of this would be a classical ferro magnetic system, where the tendency for sporadic subregions to align spins in the same directions are manifest. We go on to detail some of the features present in the Ising model.

* Is a lattice model
* Vertexes are lattice spins $(\sigma_i)$
    * The assume values between 1 and -1, i.e. $\sigma_i \in \{1,-1\}.$
* The energy for a given configuration is given by: $$ E[\sigma] = - J\sum_{\left<ij\right>}\sigma_i\sigma_j-h\sum_i\sigma_i. $$
    * The $\left<ij\right>$ formalism indicates that we are summing over nearest neighbour pairs i.e. In the Ising model only the neighbours affect each other.
    * $J$ is a coupling constant which is either ferro-magnetic $(J>0)$ or anit-ferromagnetic $(J<0)$.
    * $h$ is an external magnetic field.
    * The seccond term represents an interaction between the particles and the external magnetic field $(h)$.
    * In the case that $(h=0)$, the sign of $J$ is irrelevant as it gives equivalent descriptions of the energy.


### Quantum Statistics
When applying our previous models to quantum systems we need to capture characteristics unique to quantum mechanics (e.g. uncertranty of states). To reconcile these differences we introduce the density operator $\rho$, defined as:
$$
\rho = \exp(\beta H).
$$

Here, $H$ denotes the Hamiltonian for the system and $\beta$ the inverse temperature as it has before. We can then use our previous definition for the partition function 
$$
Z = \sum_n e^{-\beta E_n} = \rm{Tr}(\rho).
$$

The statistical average of an operator $A$ then becomes 
$$
    \begin{align}
        \braket{A} &= \sum_n \bra{n}\rho A\ket{n} \\
                   &= \rm{Tr}(\rho A) \quad\text{by diagonalizability of }\rho A.
    \end{align}
$$

By exploiting the likeness of the desnity operator $(e^{-\beta H})$ and the time-evulotion operator $(e^{-iHt})$ allows us to express a representation of the density operator as a functional integral.

Consider the Kernell (null space) of the density operator for 1 d.o.f. 
$$
\rho(x_f,x_i) = \bra{x_f}e^{-\beta H}\ket{x_i}.
$$
We can then adapt the pathintegral to this kernel by Wick rotation, i.e.
$$
S[x(t)]\to iS_E[x(\tau)].
$$
And for the density operator,
$$
\rho(x_f,x_i) = \int^{(x_f,\beta)}_{(x_i,0)}\left[dx\right]\exp\left(-\rm{S}_\rm{E}[x]\right).
$$
This allows us to write the partition function as 
$$
\begin{split}
Z &= \int dx\rho(x,x)\\
  &= \left[dx\right]\exp\left(-\rm S_\rm{E}[x]\right).
\end{split}
$$

The expectation value can then be written as 
$$
\begin{split}
\braket{a} &= \frac 1 Z\int dx \bra{x} \rho A \ket{x},\\
           &= \frac 1 Z\int dxdy \bra{x}\rho\ket y \bra y  A \ket{x},\\
           &= \frac 1 Z\int dxdy  \int^{(y,\beta)}_{(x,0)}\left[dx\right]\exp\left(-\rm{S}_\rm{E}[x]\right) \bra y  A \ket{x},\\
           &= \frac 1 Z\int dxdy  \int^{(y,\beta)}_{(x,0)}\left[dx\right] A_e(x)\delta(x-y)\exp\left(-\rm{S}_\rm{E}[x]\right),\\
           &= \frac 1 Z \int\left[dx\right] A_e(x(0))\exp\left(-\rm{S}_{\rm{E}}[x]\right).\\
\end{split}
$$
where $A_e(x)$ denotes an eigen value of $x$.

Our key takeaway from this is that we get the quantum action functional from the ordinary action through Wick rotation.