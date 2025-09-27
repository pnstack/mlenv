# mlenv

A comprehensive machine learning environment and toolkit built with modern Python packaging and containerized deployment.

## Overview

`mlenv` provides a ready-to-use machine learning environment with popular ML/AI libraries and frameworks. It's designed for data scientists, ML engineers, and researchers who need a consistent, reproducible environment for machine learning projects.

## Features

- **Deep Learning**: PyTorch ecosystem (torch, torchaudio, torchvision)
- **NLP & Transformers**: Hugging Face transformers and hub integration
- **Computer Vision**: OpenCV and Ultralytics (YOLOv8+)
- **Web Interfaces**: FastAPI for APIs and Gradio for interactive demos
- **Data Analysis**: Pandas, NumPy for data manipulation
- **Financial Analysis**: mplfinance for financial data visualization
- **Interactive Computing**: Jupyter kernel support
- **Gaming/Graphics**: Pygame for game development and graphics
- **Containerized**: Docker support with multi-architecture builds
- **Modern Packaging**: Uses uv for fast dependency management

## Requirements

- Python 3.11 or higher
- Docker (optional, for containerized deployment)

## Installation

### Using uv (recommended)

```bash
# Install uv if you haven't already
pip install uv

# Clone the repository
git clone https://github.com/pnstack/mlenv.git
cd mlenv

# Install dependencies
uv sync
```

### Using pip

```bash
# Clone the repository
git clone https://github.com/pnstack/mlenv.git
cd mlenv

# Install dependencies
pip install -e .
```

### Using Docker

```bash
# Build the Docker image
docker build -t mlenv .

# Run a Python script
docker run --rm -v $(pwd):/workspace mlenv /workspace/hello.py

# Run interactively
docker run --rm -it mlenv
```

## Quick Start

Test the installation with the included hello script:

```bash
python hello.py
```

This should output: `Hello from mlenv!`

## Key Dependencies

| Package | Purpose |
|---------|---------|
| **torch, torchaudio, torchvision** | PyTorch deep learning framework |
| **transformers** | Hugging Face transformers for NLP |
| **ultralytics** | YOLOv8+ object detection |
| **opencv-python** | Computer vision library |
| **fastapi** | Modern web framework for APIs |
| **gradio** | Interactive ML demos and UIs |
| **pandas, numpy** | Data manipulation and analysis |
| **mplfinance** | Financial data visualization |
| **pygame** | Game development and graphics |

## Development

### Running Tests

```bash
pytest
```

### Code Style

```bash
# Check code style
pep8 .
```

### Docker Development

The project includes a multi-stage Dockerfile optimized for production use:

```bash
# Build for development
docker build -t mlenv:dev .

# Build for production with optimizations
docker build -t mlenv:prod --target=base .
```

## CI/CD

The project uses GitHub Actions for automated:
- Multi-architecture Docker builds (linux/amd64, linux/arm64)
- Container publishing to GitHub Container Registry
- Automated testing on push and pull requests

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is open source. Please check the repository for license details.

## Support

For questions, issues, or contributions, please open an issue on the GitHub repository.