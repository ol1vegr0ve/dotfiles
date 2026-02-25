#!/usr/bin/env python3
import re

from pathlib import Path

file_path = Path("~/.cache/wal/discord.css").expanduser()

with open(file_path, "r") as f:
    content = f.read()

def darken(match, amount):
    r, g, b = map(int, match.groups())
    return f"{max(r-amount,0)},{max(g-amount,0)},{max(b-amount,0)}"

content = re.sub(
    r"--backgroundtertiary:\s*([0-9]+),([0-9]+),([0-9]+)",
    lambda m: f"--backgroundtertiary: {darken(m, 4)}",
    content
)

content = re.sub(
    r"--backgroundprimary:\s*([0-9]+),([0-9]+),([0-9]+)",
    lambda m: f"--backgroundprimary: {darken(m, 6)}",
    content
)

with open(file_path, "w") as f:
    f.write(content)