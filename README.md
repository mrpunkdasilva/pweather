# PWeather

A modern Android weather application built with Java.

## Description

PWeather provides users with up-to-date weather information in a clean, intuitive interface. The application is built using Java for Android and follows standard Android development practices.

## Features

- Current weather conditions
- Hourly weather forecasts
- 7-day weather forecasts
- Clean and intuitive UI

## Technologies Used

- Java
- Android SDK
- RecyclerView for list displays
- Android Architecture Components

## Requirements

- Android Studio Hedgehog (2023.1.1) or newer
- JDK 8 or higher
- Android SDK
- Gradle 8.0+

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/yourusername/pweather.git
cd pweather
```

### Build and Run

1. Open the project in Android Studio
2. Sync the project with Gradle files
3. Build the project by selecting `Build > Make Project`
4. Run the app on an emulator or physical device by selecting `Run > Run 'app'`

### Using Docker

This project includes Docker support for development and CI/CD purposes.

#### Prerequisites

- Docker installed on your machine
- Docker Compose (optional, for more advanced setups)

#### Building the Docker Image

```bash
docker build -t pweather:latest .
```

#### Running the Container

```bash
docker run -it pweather:latest
```

## Project Structure

- `app/` - Main application module
  - `src/main/java/` - Java source files
  - `src/main/res/` - Resources (layouts, drawables, etc.)
  - `src/main/AndroidManifest.xml` - App manifest file
  - `src/androidTest/` - Instrumented tests
  - `src/test/` - Unit tests

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Weather data provided by [Weather API Provider]
- Icons from [Icon Source]