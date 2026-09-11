#!/bin/sh -eu

# Adds the two rustup components a kata uses, and records the rust the base
# image turned out to carry.

rustup component add rustfmt clippy

# Read by check_version.sh, so the gate states the version this image holds
# rather than one written down when someone last edited it. rustc --version
# prints a sentence, of which the second word is the version.
echo "{\"rust\":\"$(rustc --version | cut -d' ' -f2)\"}" > /versions.json
