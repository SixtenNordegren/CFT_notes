reset()
T, h = var('T h')
a, b, Tc = var('a b Tc')

t = T/Tc - 1
y = h/(t ^ (b/a))

g = function('g')(y)

f = t ^ (1/a)*g

C = - T * diff(f, T, 2)
M = - diff(f, h, 1)
chi = - diff(f, h, 2)

C_h_0 = - T * diff(f, T, 2).subs(g == g.taylor(T, 0, 3)).subs(h == 0)
M_h_0 = - diff(f, h, 1).subs(g == g.taylor(T, 0, 3)).subs(h == 0)

chi_g_y = chi.subs(g(y) == y)
print("C = ", C)
print("M = ", M)
print("chi = ", chi)

print("chi_g_y = ", simplify(chi_g_y))
