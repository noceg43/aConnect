# Docker Setup for aConnect

This project is containerized using Docker with a simple Dockerfile.

## Prerequisites

- Docker installed on your machine

## Quick Start

```bash
# Build the image
docker build -t aconnect .

# Run the container
docker run -p 1111:1111 aconnect
```

## Access the Application

Once running, you can access:
- **Admin UI**: http://localhost:1111
- **API Documentation**: http://localhost:1111/api

## Environment Variables

The project uses a `.env` file that contains your database credentials and other configuration. Make sure you have a `.env` file in your project root with the required environment variables:

```bash
DB_CONNECTION=postgres
DB_DATABASE=your_database_name
DB_HOST=your_database_host
DB_PASSWORD=your_password
DB_PORT=5432
DB_SSL=true
DB_USERNAME=your_username
NODE_ENV=development
OPEN_API_DOCS=true
TOKEN_SECRET_KEY=your_secret_key
```

This file is automatically copied into the Docker container during build.

## Troubleshooting

### Port Already in Use
If port 1111 is already in use, you can map to a different port:
```bash
docker run -p 3000:1111 aconnect  # Use port 3000 instead
```

### Clean Rebuild
```bash
docker build --no-cache -t aconnect .
docker run -p 1111:1111 aconnect
```
