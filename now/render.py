#!/usr/bin/env python3

import os
import glob
import importlib

BIN_DIR = "bin/"

if not os.path.exists(BIN_DIR):
    os.mkdir(BIN_DIR)

with open("now/now.sh") as f:
    source = f.read()

for fn in glob.glob("now/distributions/*.py"):
    fn = fn.replace("now/", "").replace(".py", "").replace("/", ".")
    mod = importlib.import_module(fn)

    output = source

    commands = ["install", "shutdown", "update"]

    for command in commands:
        sub = getattr(mod, command)()
        sub = "\n    ".join(sub.split("\n"))
        output = output.replace("{{ " + command + " }}", sub)

    output_fn = BIN_DIR + fn.split(".")[1] + ".sh"

    with open(output_fn, "w") as f:
        f.write(output)

    os.chmod(output_fn, 0o755)
