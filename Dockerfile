# Base image with uv and Python 3.11
FROM ghcr.io/astral-sh/uv:python3.11-bookworm as base

# Set working directory
WORKDIR /app

# Enable UV optimizations
ENV UV_COMPILE_BYTECODE=1
ENV UV_LINK_MODE=copy

# Install dependencies into .venv using uv
RUN --mount=type=cache,target=/root/.cache/uv \
  --mount=type=bind,source=pyproject.toml,target=pyproject.toml \
  --mount=type=bind,source=uv.lock,target=uv.lock \
  uv sync --frozen --no-install-project --no-dev

# Add the venv to the PATH
ENV PATH="/app/.venv/bin:$PATH"

# Make `python` the entrypoint so you can run scripts easily
ENTRYPOINT ["python"]
