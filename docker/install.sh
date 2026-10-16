#!/bin/sh -eu

# Adds the two rustup components a kata uses, and records the rust the base
# image turned out to carry.

rustup component add rustfmt clippy

# Asked of the compiler, so /versions.json states the version this image holds
# rather than one written down when someone last edited it. rustc --version
# prints a sentence, of which the second word is the version.
readonly RUST_VERSION=$(rustc --version | cut -d' ' -f2)
cat > /versions.json <<EOF
{
  "language": {
    "name": "Rust",
    "version": "${RUST_VERSION}"
  },
  "test_frameworks": []
}
EOF
