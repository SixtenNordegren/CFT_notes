---
id: "Review: A bridge between QFT and Group Theory"
aliases: []
tags:
  - type/review
  - topic/QFT
---

Symmetries in QFT is often denoted by a transformation on the fields in the action which leaves it invariant, i.e.
$$
\phi\to\phi^\prime=A(\phi).
$$
This makes contact with group theory by treating said transformation as a group action. In this note, I am interesting in showing for some physical examples that the symmetry transformation actually generates the group in question.

#### Introduction Yang-Mills theory and U(1) symmetry

Consider the Yang-Mills theory with the U(1) gauge group. The action is given by
$$
S=-\frac{1}{4}\int d^4xF_{\mu\nu}F^{\mu\nu},
$$
where $F_{\mu\nu}=\partial_\mu A_\nu-\partial_\nu A_\mu$ is the field strength tensor. The U(1) symmetry transformation is given by
$$
A_\mu\to A_\mu+\partial_\mu\theta(x),
$$
where $\theta(x)$ is an arbitrary function of spacetime. The transformation is a symmetry of the action if the action remains invariant under the transformation. This is easily seen by noting that the field strength tensor transforms as
$$
F_{\mu\nu}\to F_{\mu\nu}+\partial_\mu\partial_\nu\theta(x)-\partial_\nu\partial_\mu\theta(x)=F_{\mu\nu},
$$
and the action is invariant under the transformation. To show that the transformation generates the U(1) group we need to properly define the U(1) group. The U in U(1) stands for unitary, meaning that the group elements are unitary, i.e. $U^\dagger U=1$. The 1 in U(1) stands for the group being one-dimensional. The most general element of the U(1) group is hence given by
$$
U=e^{i\theta},
$$
