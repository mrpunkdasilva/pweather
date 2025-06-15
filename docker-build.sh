#!/bin/bash

# Build the Docker image
echo "Building Docker image for PWeather..."
docker build -t pweather:latest .

echo "Docker image built successfully!"
echo "You can now run the container with one of the following commands:"
echo ""
echo "To list available Gradle tasks:"
echo "  docker run -it pweather:latest"
echo ""
echo "To build the debug APK:"
echo "  docker run -it -v $(pwd):/app pweather:latest ./gradlew assembleDebug"
echo ""
echo "To run tests:"
echo "  docker run -it -v $(pwd):/app pweather:latest ./gradlew test"
echo ""
echo "To use Docker Compose:"
echo "  docker-compose run android-build    # Build debug APK"
echo "  docker-compose run android-test     # Run tests"