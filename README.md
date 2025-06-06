# FastAPI Docker Setup Guide

This repository demonstrates how to set up a FastAPI application with Docker, including different environment configurations for development, staging, and production.

## Project Structure

```
.
├── main.py              # FastAPI application entry point
├── requirements.txt     # Python dependencies
├── Dockerfile          # Docker configuration
├── docker-compose.development.yaml
├── docker-compose.staging.yaml
├── docker-compose.production.yaml
└── .env.*              # Environment configuration files
```

## Prerequisites

- Docker and Docker Compose installed on your system
- Python 3.11 or higher (for local development)
- Git

## Quick Start

1. Clone the repository:
```bash
git clone <repository-url>
cd <repository-name>
```

2. Create environment files:
   - `.env.development` for development
   - `.env.staging` for staging
   - `.env.production` for production

   Each file should contain your environment variables, for example:
   ```
   MY_VARIABLE=your_value
   ```

## Running the Application

### Development Environment

```bash
docker-compose -f docker-compose.development.yaml up --build
```

### Staging Environment

```bash
docker-compose -f docker-compose.staging.yaml up --build
```

### Production Environment

```bash
docker-compose -f docker-compose.production.yaml up --build
```

## API Endpoints

- `GET /`: Protected endpoint that returns an environment variable
- `GET /public`: Public endpoint that returns a greeting message

## Docker Configuration

### Dockerfile

The Dockerfile uses Python 3.11 slim image and sets up the application with the following steps:
1. Sets the working directory to `/app`
2. Copies the application files
3. Installs dependencies from requirements.txt
4. Runs the FastAPI application using uvicorn

### Docker Compose Files

Each environment has its own docker-compose file with specific configurations:

- **Development**: Includes hot-reload for development
- **Staging**: Configured for testing environment
- **Production**: Optimized for production deployment

## Environment Variables

Create the following environment files based on your needs:

- `.env.development`
- `.env.staging`
- `.env.production`

Required variables:
- `MY_VARIABLE`: Example environment variable

## Development

### Local Development

1. Create a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Run the application:
```bash
uvicorn main:app --reload
```

### Adding New Dependencies

1. Add new packages to `requirements.txt`
2. Rebuild the Docker container:
```bash
docker-compose -f docker-compose.development.yaml up --build
```

## Deployment

### Production Deployment

1. Ensure all environment variables are set in `.env.production`
2. Build and run the production container:
```bash
docker-compose -f docker-compose.production.yaml up --build -d
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

[Add your license information here]
