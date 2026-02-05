# ⚡️ uv-ruff-template

A modern, high-performance Python project template featuring **uv**, **Ruff**, **Mypy**, and **pre-commit**. Designed for speed, strictness, and a premium developer experience.

[![Python Version](https://img.shields.io/badge/python-3.13+-blue.svg)](https://www.python.org/downloads/)
[![Linter: Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![Type Checked: Mypy](https://img.shields.io/badge/type_checked-mypy-blue.svg)](https://github.com/python/mypy)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## ✨ Features

- 🚀 **[uv](https://github.com/astral-sh/uv)**: Blazing fast Python package manager and resolver.
- 🛠️ **[Ruff](https://github.com/astral-sh/ruff)**: All-in-one linter and formatter (replaces Flake8, isort, Black).
- 🏗️ **[Mypy](https://github.com/python/mypy)**: Strict static type checking for robust code.
- ⚓ **[Pre-commit](https://pre-commit.com/)**: Automated Git hooks for linting and type checking on every commit.
- 🐳 **Docker-Ready**: Multiple Dockerfiles included (Slim, Multi-stage, Workspace).
- 📝 **Makefile**: Simple aliases for common development tasks.

---

## 🚀 Quick Start

### 1. Install uv
If you don't have `uv` installed yet, run:
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### 2. Setup Project
Initialize the environment and install dependencies:
```bash
uv sync
```

### 3. Install Pre-commit
Enable automated checks before every commit:
```bash
uv run pre-commit install
```

---

## 🏗️ Development Workflow

### Dependency Management
Add or remove packages easily with `uv`:

```bash
# Add a runtime dependency
uv add my-req-package

# Add a development dependency
uv add --dev pytest-asyncio

# Update all dependencies
uv lock --upgrade
```

### Quality Assurance
Use the provided `Makefile` for quick checks:

```bash
make lint       # Fix linting issues automatically
make typecheck  # Run Mypy static analysis
make test       # Run Pytest suite
make format     # Format code with Ruff

# Skip pre-commit checks (e.g. for WIP commits)
git commit --no-verify
```

### Docker Usage
Build and run the containerized application:

```bash
docker build -t my-app .
docker run my-app
```

---

## 🛠️ Docker Configuration Secrets
When building for production, you can use these flags with `uv`:
- `--frozen`: Use the exact lockfile versions.
- `--no-dev`: Skip development dependencies.
- `--no-install-project`: Install dependencies only (perfect for layer caching).

---

## 📜 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.