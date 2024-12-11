# Define variables t, T
T, h = var('T h')
a, b, Tc = constants('a b Tc')

# Define y as the fraction y = h/t^(b/a)
t = T/Tc - 1
y = h/(t ^ (b/a))
# Define g as a function of y
g = function('g')(y)
f = t ^ (1/a)*g
# Define the seccond derivative of f
ddf = diff(f, T, 2)
C = limit(T * ddf, h=0)

print("C = ", C)
print("C = ", simplify(C))
