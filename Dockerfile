FROM python:3.13-slim
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

WORKDIR /app

# Install dependencies (cached layer)
COPY pyproject.toml uv.lock ./
RUN uv sync --frozen --no-dev --no-install-project

# Copy code and install project
COPY . .
RUN uv sync --frozen --no-dev

# Run with uv
CMD ["uv", "run", "python", "-m", "main"]