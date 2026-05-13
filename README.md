# Test

```
.
├── python/
│   └── python_test.py
└── julia/
    └── julia_test.jl
```

---

## Python (`python/python_test.py`)

**Setup**

```bash
cd python
python3 -m venv .venv
source .venv/bin/activate
pip install numpy matplotlib
```

**Run**

```bash
cd python
source .venv/bin/activate
python3 python_test.py
```

After finishing: `deactivate`.

---

## Julia (`julia/julia_test.jl`)


**Setup**

```bash
cd julia
julia --project=. -e 'using Pkg; Pkg.add(["DifferentialEquations", "Plots"])'
```

**Run**

```bash
cd julia
julia --project=. julia_test.jl
```