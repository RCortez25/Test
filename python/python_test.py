import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0, 2 * np.pi, 400)
y = np.sin(x)

fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(x, y, label="sin(x)", linewidth=2)
ax.set_xlabel("x")
ax.set_ylabel("sin(x)")
ax.set_title("numpy + matplotlib")
ax.grid(True, alpha=0.3)
ax.legend()
fig.tight_layout()

fig.savefig("python_plot.png", dpi=120)
print("Saved python_plot.png")

plt.show()
