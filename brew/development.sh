#!/bin/sh

#
# development.sh
# @natebwangsut <nate.bwangsut@gmail.com>
# ---
# Installing programming languages and tools from brew
#

# Development
# Rust Lang
brew install rust

################################################################################

# Go Lang
brew install go

################################################################################

# Python
brew install python uv ruff

################################################################################

# Node.js & Typescript
brew install node nvm typescript

# bun
brew tap oven-sh/bun
brew install bun
