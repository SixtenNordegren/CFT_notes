---
id: Vanishing trace
aliases: []
tags:
  - topic/QFT
  - topic/CFT
  - type/proof
---

The aim of this note is to show, with as much detail as possible, that conformal invariance is equivalent to having a vanishing stress tensor.

We do this in two sections. In the first section we derive a useful formula, writing the variation of the action in terms of the stress tensor and the variation of the metric tensor. In the second part of the note we show a quick proof, starting from this formula.

## Variation of the action with metric tensor
The variation of the action $(\delta S)$ can, for a general QFT, be show to be written in terms of a current $(j^\mu_a)$
$$
\delta S = \int d^dx \partial_\mu j^\mu_a \omega_a;\tag{1}
$$
see the note on [[Active Transformation|active transformations]] for more details.

The current associated with infinitesimal translations is called the stress-energy-momentum tensor, or just stress tensor for short. The when written in equation $\eqref{1}$ we get
$$
\delta S  =\int d^dx \partial_\mu T^{\mu\nu}\epsilon_\nu.
$$
Here $\epsilon_\nu$ is an infinitesimal parameter and the index $a$ from $\eqref{1}$ has now become a space-time index. We quickly rewrite our expression with partial integration
$$
\begin{align}
\delta S &= \int \left(d^dx T^{\mu\nu}\partial_\mu\epsilon_\nu\right) + \bigl[T^{\mu\nu}\epsilon_\nu\bigl]_{-\infty}^\infty\\
&= \int d^dx T^{\mu\nu}\partial_\mu\epsilon_\nu\qquad \text{ by compact support.}
\end{align}
$$

We assume from now on that the stress tensor is symmetric. This is generally not true for the stress tensor, but it can always be written to a symmetric form, the so-called Belifante form[^1]. With our stress tensor being symmetric we can write
$$
\begin{align}
\delta S &= \int d^dx\frac12 \left(T^{\mu\nu}\partial_\mu\epsilon_\nu +T^{\mu\nu}\partial_\mu\epsilon_\nu\right)\\
 &= \frac12\int d^dx \left(T^{\mu\nu}\partial_\mu\epsilon_\nu +T^{\nu\mu}\partial_\nu\epsilon_\mu\right)\qquad \text{rename indexes}\\
 &= \frac12\int d^dx T^{\mu\nu}\left(\partial_\mu\epsilon_\nu +\partial_\nu\epsilon_\mu\right)\qquad\text{extract symmetric stress tensor}\\
\end{align}
\tag{2}
$$

Consider now the metric tensor $(g_{\mu\nu})$ and let it undergo a [[Passive Transformations|passive transformation]],
$$
g^\prime_{\mu\nu} = \frac{\partial x^\alpha}{\partial x^{\prime \mu}}\frac{\partial x^\beta}{\partial x^{\prime\nu}}g_{\alpha\beta}.
$$
Under an infinitesimal translation $x$ transforms as
$$
x^\mu\to x^{\prime\mu} = x^\mu + \epsilon^\mu.
$$
For the metric tensor this becomes
$$
\begin{align}
g^\prime_{\mu\nu}&=\frac{\partial}{\partial x^{\prime\mu}}\left(x^{\prime\alpha} - \epsilon^\alpha\right)
\frac{\partial}{\partial x^{\prime\nu}}\left(x^{\prime\beta} - \epsilon^\beta\right)g_{\alpha\beta}\\
&= \left(\delta^\alpha_{\mu} - \partial_\mu\epsilon^\alpha\right)
\left(\delta_\nu^{\beta} - \partial_\nu\epsilon^\beta\right)g_{\alpha\beta}\\
&= \left(\delta^\alpha_\mu\delta_\nu^\beta - \delta^\alpha_\mu\partial_\nu\epsilon^\beta - \partial_\mu\epsilon^\alpha\delta^\beta_\nu-\partial_\mu\epsilon^\alpha\partial_\nu\epsilon^\beta\right)g_{\alpha\beta}\\
&= g_{\mu\nu} - \partial_\nu\epsilon^\beta g_{\mu\beta} - \partial_\mu\epsilon^\alpha g_{\alpha\nu} - \partial_\mu\epsilon^\alpha\partial_\nu\epsilon_\alpha\\
&\approx g_{\mu\nu} - \partial_\nu\epsilon^\beta g_{\mu\beta} - \partial_\mu\epsilon^\alpha g_{\alpha\nu}\qquad\text{to first order in }\epsilon.
\end{align}
$$

With this expression it is extremely simple to compute the variation of the metric, that is
$$
\delta g_{\mu\nu} = - \left(\partial_\nu\epsilon^\beta g_{\mu\beta} + \partial_\mu\epsilon^\alpha g_{\alpha\nu}\right).
$$
Using this expression in combination with equation $\eqref{2}$, we get
$$
\delta S = - \frac12\int d^dxT^{\mu\nu}\delta g_{\mu\nu}.\tag{3}
$$
## Proof
A conformal transformation is an invertible map, leaving the metric tensor invariant up to a scale
$$
g_{\mu\nu}(x) \to g^\prime_{\mu\nu} (x^\prime) = \Lambda(x)g_{\mu\nu} (x).
$$
If we define the helper function $\sigma(x)$ as
$$
\sigma(x) := \Lambda(x) - 1
$$
we can very easily evaluate the variation of the metric,
$$
\delta g_{\mu\nu} = \sigma(x)g_{\mu\nu}.
$$
Combing this expression with $\eqref{3}$ we get
$$
\begin{align}
\delta S &= - \frac12\int d^dx T^{\mu\nu}\sigma(x)g_{\mu\nu};\\
&= -\frac12\int d^dxT^\mu_{\,\mu}\sigma(x).
\end{align}
$$
So for a non-vanishing $\sigma$ the trace of the stress tensor $(T^\mu_{\,\mu})$ must vanish for the principle of least action to hold true. But if we ask ourselves when $\sigma$ becomes zero, we notice that it is when $\Lambda = 1$ which is the specific subset of the conformal group that is the $\text{Poincar\'e}$ group.
[^1]: There is more to this then, that it can simply be rewritten. For more details see Di Francesco.
