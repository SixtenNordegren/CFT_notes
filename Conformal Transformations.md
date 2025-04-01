---
id: Active Transformation
aliases: []
tags:
  - topic/QFT
  - topic/Group Theory
---

In this note we investigate the active transformation, and its effects on a general action functional $S[\phi, \partial_\mu\phi]$. We start by giving a definition of the concepts and proceed to work out a few examples. Furthermore we investigate the infinitesimal transformation and give a short proof of Nöters theorem.

### Introduction
A transformation of the action $S$ can be thought of from two different perspectives. The first one, the *active* transformation, adds or changes the content of a function i.e., by setting it to a different value then what it first was.
Transforming the position,
$$
x \to x^\prime,
$$
and the transformed fields being functions of the non-transformed fields,
$$
\phi(x) \to \phi^\prime(x^\prime) = \mathcal F \left(\phi(x)\right).
\tag{1}
$$
These transformations then change the action,
$$
S \to S^\prime = S[\phi^\prime(x^\prime), \partial_\mu\phi^\prime(x^\prime)].
$$

An alternative paradigm, the [[Passive Transformations|passive transformations]], are discussed in another note.

Consider the transformed action:
$$
\begin{aligned}
S^\prime &= \int d^dx \mathcal L\left(\phi^\prime(x),\partial_\mu\phi^\prime(x)\right)\\
&=\int d^dx^\prime \mathcal L\left(\phi^\prime(x^\prime),\partial^\prime_\mu\phi^\prime(x^\prime)\right) \qquad \text{(Change of integration variable.)}\\
&=\int d^dx^\prime \mathcal L\left(\mathcal F(\phi(x)),\partial^\prime_\mu\mathcal F (\phi(x))\right) \qquad \text{( Applying equation \eqref{1}.)}\\
&=\int \left | \frac{\partial x^\prime}{\partial x}\right | d^dx \mathcal L\left(\mathcal F(\phi(x)),\frac{\partial x^{\prime\nu}}{\partial x^{\prime \mu}}\partial^\prime_\nu\mathcal F (\phi(x))\right) \qquad
\end{aligned}
\tag{2}
$$
This expression gives us a way to formally investigate the transformed action.
### Examples
With the expression for the action we just derived we are able to compute a few simple examples of active transformations on the action. We go on to compute examples for translation, rotation and scale transformation.


1. E.x.: Translation
$$
\begin{align}
x^\prime &= x + a \qquad\text{( $a$ is a constant parameter.)}\\
\phi^\prime (x + a) &= \phi (x)
\end{align}
$$

This example is trivial seeing as
$$
\left | \frac{\partial x^\prime}{\partial x} \right | = 1,\qquad \frac{\partial x^{\,\nu}}{\partial x^{\prime \mu}} = \delta^{\,\nu}_{\mu},\quad \text{and}\quad \mathcal F(\phi(x))= \phi(x) .
$$

This leads us to the conclusion that the action is invariant, unless explicitly dependent on the position, of the position.

2. E.x.: Lorentz transformation

$$
x^\prime = \Lambda^\mu_{\,\nu}x^\nu,\quad \phi^\prime(\Lambda x) = L_\Lambda \phi(x)
$$

Using formula $\eqref{2}$, we move to compute the Jacobian and the change of variable matrix again we get the following.


$$
\begin{align}
\left | \frac{\partial x^\prime}{\partial x}\right|
&= \text{det}\left(\frac{\partial x^{\prime\mu}}{\partial x^\nu}\right )\\
&= \text{det}\left(\frac{\partial}{\partial x^\nu} \Lambda^{\mu}_{\,\rho}x^{\rho}\right)\\
&= \text{det}\left(\Lambda^{\mu}_{\,\rho}\delta^{\rho}_{\nu}\right)\\
&= \text{det}\left(\Lambda^{\mu}_{\,\nu}\right)\\
&= 1 \qquad\text{By unitarity}[^1]
\end{align}
$$

$$
\textcolor{red}{
\text{Are we sure that the change of variables matrix } \Lambda^{\,\mu}_\nu\text{ does not have a local dependency? I.e. } \Lambda^{\,\mu}_\nu (x)\text{ or just }\Lambda^{\,\mu}_\nu}
\text{On second thought, I'm pretty sure it doesn't.}
$$
[^1]: There are representations of the Lorentz group that are non-unitary. However for our purposes I we will strictly use unitary ones. (I think)

3. E.x.: Scale transformations

$$
\begin{gather}
x^\prime = \lambda x \qquad \lambda\text{ is a constant scalar called the dilation factor},\\
\phi^\prime(\lambda x) = \lambda^{-\Delta}\phi(x)\qquad \Delta \text{ is the scaling dimension of the field}.
\end{gather}
$$

Since we get a simple Jacobian, namely
$$
\left | \frac{\partial x^\prime}{\partial x}\right| = \lambda,
$$
we use formula $\eqref{2}$ and we get
$$
S^\prime = \lambda^d \int d^dx \mathcal L (\lambda^{-\delta} \phi, \lambda^{-1 -\Delta}\partial_\mu\phi).
$$
### Infinitesimal transformation

In this section we consider the active transformations caused by a set of infinitesimal parameters $\{\omega_a\}$. The transformations we refer to in this section are
$$
\begin{align}
x^\mu \to x^{\prime\mu} = x^\mu + \omega_a \frac{\delta x^\mu}{\delta \omega_a},\\
\phi^\prime(x^\prime) = \phi(x) + \omega_a \frac{\delta\mathcal F}{\delta \omega_a}.
\end{align}\tag{3}
$$

Where $\delta$ denotes the [[Math/Functional analysis|functional derivative]]. Before we proceed with the general calculation we make a quick aside into group theory.

The collective symmetry transformations for a given action gives form to a symmetry group. It is common to define the generators $(G_a)$ for such a group through the functional derivative as follows

$$
\frac{\delta\phi(x)}{\delta \omega} := \phi^\prime(x) - \phi(x):= -i\omega_a G_a\phi\tag{4}.
$$

Going back to the infinitesimal transformation, we can perform the following expansion of the field $\phi(x)$ w.r.t. $\omega_a$ around the point $x^\prime$ as follows.

$$
\begin{align}
\phi(x) &= \phi\left(x^\prime - \omega_a \frac{\delta x}{\delta \omega_a}\right)\\
&= \phi(x^\prime) + \left[\frac{\delta}{\delta \omega_a}\phi \left(x^\prime - \omega_a\frac{\delta x}{\delta \omega_a}\right)\right] \cdot\omega_a + h.c.\qquad \text{terms of order } \omega^2 \text{vanish.}\\
&= \phi(x^\prime) + \frac{\partial \phi(x^\prime)}{\partial x^{\prime \mu}}\frac{\delta}{\delta \omega_a}\left(x^\prime - \omega_a \frac{\delta x}{\delta \omega_a}\right) \cdot\omega\\
&= \phi(x^\prime) - \omega_a \left(\frac{\partial \phi(x^\prime)}{\partial x^\prime}\right)\frac{\delta x}{\delta \omega_a}
\end{align}
$$

Having expanded $\phi(x)$ in combination with the transformed field $\eqref{4}$ allows us deduce the following
$$
\begin{align}
\phi^\prime (x^\prime) &= \phi(x) + \omega_a \frac{\delta\mathcal F }{\delta\omega_a}(x) \\
&= \phi(x^\prime) - \omega_a \left(\frac{\partial \phi(x^\prime)}{\partial x^\prime}\right)\frac{\delta x}{\delta \omega_a} +\omega_a \frac{\delta\mathcal F }{\delta\omega_a}(x^\prime)
\end{align}
$$
In the last component of the above expansion, we have performed a similar expansion of the function $\mathcal F$ around $x^\prime$ to change it's dependence to $x^\prime$. From this we can conclude two things. Firstly, the variation of the fields can w.l.o.g. be written as
$$
\begin{align}
\delta_\omega \phi(x) &= \phi^\prime(x) - \phi(x), \\
&= - \omega_a \left(\frac{\partial \phi(x)}{\partial x}\right)\frac{\delta x}{\delta \omega_a} +\omega_a \frac{\delta\mathcal F }{\delta\omega_a}(x).
\end{align}
$$

Secondly, we can use our previous calculation to determine the generators,
$$
i G_a \phi(x) = - \frac{\partial \phi(x^\prime)}{\partial x} \frac{\delta x}{\delta \omega_a}+ \frac{\delta \mathcal F}{\delta \omega_a}(x)
$$

Now to evaluate our expression for the action $\ref{2}$ we compute the Jacobian matrix and determinant. To start of we will make use of the following approximation:
$$
\text{det}(1 + E) \approx 1 + \text{Tr}E
$$
we see that the Jacobian determinant can be written as
$$
\left | \frac{\partial x^\prime}{\partial x} \right| \approx 1 + \partial_\mu \left(\omega_a\frac{\delta x^\mu}{\delta \omega_a}\right)
$$
and the Jacobian matrix
$$
\frac{\partial x^\nu}{\partial x^{\prime\mu}} = \delta^\nu_\mu - \partial_\mu\left(\omega_a\frac{\delta x^\nu}{\delta \omega_a}\right).
$$
Which allows us to write down the transformed action

$$
S^\prime = \int d^dx\left(1 + \partial_\mu \left(\omega_a \frac{\delta x^\mu}{\delta\omega_a}\times \mathcal L \left( \phi + \omega_a \frac{\mathcal F}{\delta\omega_a}, \left[\delta^\nu_\mu - \partial_\mu\left(\omega_a \left(\frac{\delta x^\nu}{\delta \omega^a}\right)\right)\right]\left(\partial_\nu\phi + \partial_\nu\left[\omega_a \left(\frac{\delta \mathcal F}{\delta \omega_a}\right)\right]\right)\right)\right)\right)
$$

Now expanding expression around $x$ w.r.t. $\omega_a$ we can write the variation of the action, similarly to how we did for the field. This equation is quite a bit more tedious, so we leave out the explicit calculation for now. The result is the following:

$$
\delta S = \int d^d x \partial_\mu j^\mu_{\,a}\omega_a
$$
where $j^\mu_{\,a}$ is the conserved current defined as
$$
j^\mu_{\,a} = \left\{\frac{\partial \mathcal L}{\partial \left(\partial_\mu \phi\right)}-\delta^\mu_\nu\mathcal L\right\}\frac{\delta x^\nu}{\delta \omega_a} - \frac{\partial \mathcal L}{\partial\left(\partial_\mu\phi\right)}\frac{\delta\mathcal F}{\delta \omega_a}.
$$

This is an example of the famous Nöther's theorem. The principle of least action,
$$
\delta S = 0,
$$
implies the following conservation law
$$
\partial_\mu j^\mu_{\,a} = 0.
$$

#### Conformal Transformations in d-dimensions

It is important to realize that conformal invariance of classical theories does not mean that a quantized version of that same theory will respect the same conformal invariance. Indeed, for a QFT to be well-defined one needs to introduce a cutoff and consequently a rescaling of the theory. This rescaling will break conformal invariance except at specific values of said scaling. These values correspond to configurations that are fixed points of the re-normalization group.

A spinless field transforms as follows under conformal transformation:
$$
\phi(\mathbf x ) \to \phi^\prime(\mathbf x) = \left| \frac{\partial \mathbf{x}^\prime}{\partial{\mathbf x}}\right|^{-\Delta/d}\phi(\mathbf x)
$$
where $\Delta$ is the scaling dimension of the theory and the Jacobian can be related to the scale factor $\Lambda(x)$ as
$$
\left|\frac{\partial\mathbf{x}^\prime}{\partial \mathbf x}\right| = \Lambda (\mathbf x )^{-d/2}.
$$
Fields that transform like these are called *quasi primary*.
