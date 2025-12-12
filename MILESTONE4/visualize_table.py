import pandas as pd
from tabulate import tabulate
import matplotlib.pyplot as plt

# ========== CONFIG ==========
CSV_FILE = "ternary_truth_table.csv"   # Change if your file has a different name
SAVE_IMAGE = True                      # Set to False to skip PNG export
IMAGE_FILE = "truth_table_visual.png"  # Output image filename
# ============================


def load_csv(file_path):
    """Load CSV into a pandas DataFrame."""
    return pd.read_csv(file_path)


def print_pretty_table(df):
    """Prints the table in a clean, readable format."""
    print(tabulate(df, headers="keys", tablefmt="grid", showindex=False))


def save_table_as_image(df, output_file):
    """Save the table as a PNG image using matplotlib."""
    fig, ax = plt.subplots(figsize=(12, 0.5 * len(df)))
    ax.axis("off")

    table = ax.table(
        cellText=df.values,
        colLabels=df.columns,
        loc="center"
    )
    table.auto_set_font_size(False)
    table.set_fontsize(10)
    table.scale(1, 1.5)

    plt.savefig(output_file, bbox_inches="tight", dpi=300)
    plt.close()

    print(f"[+] Table image saved to {output_file}")


def main():
    df = load_csv(CSV_FILE)

    print("\n=== FORMATTED TABLE ===\n")
    print_pretty_table(df)

    if SAVE_IMAGE:
        save_table_as_image(df, IMAGE_FILE)


if __name__ == "__main__":
    main()

