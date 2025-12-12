import pandas as pd

# -----------------------------------------------
# Generate ternary reflected Gray code for n trits
# -----------------------------------------------
def ternary_reflected_gray(n):
    if n == 1:
        return [[0], [1], [2]]
    prev = ternary_reflected_gray(n - 1)
    out = []

    # prefix 0
    for p in prev:
        out.append([0] + p)
    # prefix 1 (reverse order)
    for p in reversed(prev):
        out.append([1] + p)
    # prefix 2
    for p in prev:
        out.append([2] + p)

    return out


# -----------------------------------------------
# Mapping A: internal digit → actual ternary value
# -----------------------------------------------
# 0 → 0
# 1 → +1
# 2 → -1
map_A = {0: 0, 1: +1, 2: -1}

# -----------------------------------------------
# Generate the full 5-trit test sequence
# Order: A, B, w00, w10, w20
# -----------------------------------------------
seq = ternary_reflected_gray(5)
assert len(seq) == 243  # 3^5 combinations

rows = []
for step, (A_t, B_t, W00_t, W10_t, W20_t) in enumerate(seq):

    A    = map_A[A_t]
    B    = map_A[B_t]
    W00  = map_A[W00_t]
    W10  = map_A[W10_t]
    W20  = map_A[W20_t]

    # neuron output
    y = max(0, A*W00 + B*W10 + W20)

    rows.append({
        "step": step,
        "A": A,
        "B": B,
        "w00": W00,
        "w10": W10,
        "w20": W20,
        "y": y
    })

df = pd.DataFrame(rows)

# -----------------------------------------------
# Save to CSV
# -----------------------------------------------
df.to_csv("neuron_truth_table.csv", index=False)

print("Generated neuron_truth_table.csv with", len(df), "rows.")
print(df.head(10))  # preview
