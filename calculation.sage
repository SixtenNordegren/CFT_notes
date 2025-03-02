reset()
T, h = var('T h')
a, b, Tc = var('a b Tc A')

t = T/Tc - 1
y = h/(t ^ (b/a))

g = function('g')(y)

f = t ^ (1/a)*g

C = - T * diff(f, T, 2)
M = - diff(f, h, 1)
chi = - diff(f, h, 2)

C_h_0 = - T * diff(f, T, 2).subs(g == g.taylor(T, 0, 3)).subs(h == 0)
M_h_0 = - diff(f, h, 1).subs(g == g.taylor(T, 0, 3)).subs(h == 0)

# Substitute the derivative of g w.r.t. T with the derivateive of y w.r.t.
# T in chi
chi_g_y = -(T/Tc - 1) ^ (-2*b/a + 1/a)*(diff(y, T, 1)) ^ (1/A)
print("C = ", C)
print("M = ", M)
print("chi = ", chi)

print("chi_g_y = ", simplify(chi_g_y))
print(latex(simpify(chi_g_y)))
