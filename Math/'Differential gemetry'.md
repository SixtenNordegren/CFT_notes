---
id: "'Differential gemetry'"
aliases: []
tags: []
---
Let $\mathcal M$ be a manifold.
##### Def. Vector Field
A vector field on $\mathcal M$ is a map $X: \mathcal M \to T\mathcal M$ such that for each $p \in \mathcal M$, $X_p \in T_p\mathcal M$.

In local coordinates, a vector field can be written as
$$
X = a^i(x) \frac{\partial}{\partial x^i}.
$$
we require that $a^i(x)$ be smooth functions.

For the remainder of this document; let $X$ be a vector field on $\mathcal M$.

##### Def. Integral Curves (*or flow lines, or trajectories*)
Let $\gamma_p(t)$ be a curve on $\mathcal M$,
$$
\gamma_p: \mathbb{R} \to \mathcal M.
$$
For $\gamma_p(t)$ to constitute an integral curve it also has to emerge as a solution of o.d.e.s[^1].
$$
\begin{align}
\frac{d\gamma_{p\,1}}{dt} &= X(\gamma_{p\, 1}(t))\\
\frac{d\gamma_{p\,2}}{dt} &= X(\gamma_{p\, 2}(t))\\
&\,\,\,\vdots\\
\frac{d\gamma_{p\,\text{dim}(\mathcal M)}}{dt} &= X(\gamma_{p\,\text{dim}(\mathcal M)}(t)).
\end{align}
$$


##### Def. Flow

The flow $\Phi$ is a smoot one-parameter group of diffeomorphisms $\Phi: \mathcal R \times \mathcal M \to \mathcal M$ such that
$$
\begin{split}
\Phi(0, p) &= p;\\
\Phi(t, \Phi(s, p)) &= \Phi(t+s, p).
\end{split}
$$
There exists a few different choices of notation for flows, the one we use is
$$
\Phi(t, p) = \gamma_p(t).
$$
Furthermore, in cases where the vector field at hand is ambiguous, it is also common to denote certain flows
$$
\Phi_{V,t}(p).
$$
Here, $V$ is the vector field and $t$ is the time.

##### Def. Lie Derivative
The Lie derivative of a vector field $X$ with respect to another vector field $Y$ is denoted $\mathcal L_Y X$ and is defined as
$$
\mathcal L_Y X = [Y, X].
$$
The Lie bracket is defined as
$$
[Y, X] = Y^i \frac{\partial X^j}{\partial x^i} - X^i \frac{\partial Y^j}{\partial x^i}.
$$
The Lie derivative is a measure of how much the vector field $X$ changes along the flow of $Y$.

##### Def. Killing Vector Field
A vector field $X$ is said to be a Killing vector field if the Lie derivative of the metric tensor $g$ with respect to $X$ is zero.
$$
\mathcal L_X g = 0.
$$
This means that the metric tensor is invariant under the flow of $X$.

##### Def. Lie Group
A Lie group is a group that is also a smooth manifold such that the group operations are smooth.

##### Def. Lie Algebra
The Lie algebra of a Lie group is the tangent space at the identity element of the group. It is a vector space equipped with the Lie bracket.



[^1]: Autonomous sytems of ODEs, see [3](#References).
## References
1. [Differential Geometry](https://en.wikipedia.org/wiki/Differential_geometry)
2. [Crash Course on Flows](https://www.math.utoronto.ca/karshon/grad/2010-11/flows.pdf)
3. [Autonomous Systems of ODEs](https://en.wikipedia.org/wiki/Autonomous_system_(mathematics))
4. [Jeffery M. Lee - Manifolds and Differential Geometry](https://books.google.se/books/about/Manifolds_and_Differential_Geometry.html?id=QKFnEAAAQBAJ&redir_esc=y)
[]: # (END)
