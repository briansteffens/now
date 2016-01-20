#!/usr/bin/env python3

import os
import sys
import glob
import importlib

BIN_DIR = "bin/"

if not os.path.exists(BIN_DIR):
    os.mkdir(BIN_DIR)

with open("now/now.sh") as f:
    source = f.read()

if len(sys.argv) < 2:
    print("Run ./configure first")
    sys.exit(0)

build_target = sys.argv[1]

for fn in glob.glob("now/distributions/{}.py".format(build_target)):
    fn = fn.replace("now/", "").replace(".py", "").replace("/", ".")
    mod = importlib.import_module(fn)

    output = source

    commands = ["install", "shutdown", "update"]

    for command in commands:
        sub = getattr(mod, command)()
        sub = "\n    ".join(sub.split("\n"))
        output = output.replace("{{ " + command + " }}", sub)

    output_fn = BIN_DIR + "now"

    with open(output_fn, "w") as f:
        f.write(output)

    os.chmod(output_fn, 0o755)
