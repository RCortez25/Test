# Test

Two minimal "hello world" scripts — one in Python, one in Julia — each in its
own folder with its own isolated environment.

```
.
├── python/
│   └── python_test.py     # plots sin(x) with numpy + matplotlib
└── julia/
    └── julia_test.jl      # solves du/dt = -k·u with DifferentialEquations.jl
```

Both scripts save a PNG (`python_plot.png` / `julia_plot.png`) next to
themselves. The Python script also opens a window; the Julia script prints the
max error vs. the analytical solution.

---

## Python (`python/python_test.py`)

Uses a standard `venv` virtual environment.

**One-time setup** (from the repo root):

```bash
cd python
python3 -m venv .venv
source .venv/bin/activate
pip install numpy matplotlib
```

**Run** (each time):

```bash
cd python
source .venv/bin/activate     # skip if the venv is already active
python3 python_test.py
```

To leave the venv when you're done: `deactivate`.

---

## Julia (`julia/julia_test.jl`)

Julia's equivalent of a virtual environment is a *project* — a folder with a
`Project.toml` / `Manifest.toml`. The `--project=.` flag tells Julia to use it.

**One-time setup** (from the repo root):

```bash
cd julia
julia --project=. -e 'using Pkg; Pkg.add(["DifferentialEquations", "Plots"])'
```

The first install takes a few minutes — `DifferentialEquations.jl` is large
and Julia precompiles everything up front.

**Run** (each time):

```bash
cd julia
julia --project=. julia_test.jl
```
