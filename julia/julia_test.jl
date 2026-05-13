using DifferentialEquations
using Plots

f(u, p, t) = -p * u

u0 = 1.0
k = 1.0
tspan = (0.0, 5.0)

prob = ODEProblem(f, u0, tspan, k)
sol = solve(prob, Tsit5(); saveat = 0.05)

t = sol.t
truth = u0 .* exp.(-k .* t)

plt = plot(t, sol.u;
    label = "Numerical (Tsit5)",
    lw = 2,
    xlabel = "t",
    ylabel = "u(t)",
    title = "du/dt = -k u,  u0=$(u0),  k=$(k)",
)
plot!(plt, t, truth; label = "Analytical exp(-k t)", lw = 2, ls = :dash)

savefig(plt, "julia_plot.png")
println("Saved julia_plot.png")

err = maximum(abs.(sol.u .- truth))
println("Max |numerical - analytical| = ", err)
