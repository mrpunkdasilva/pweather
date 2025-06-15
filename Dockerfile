FROM openjdk:11-jdk-slim

# Install required packages
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    wget \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set up environment variables
ENV ANDROID_HOME /opt/android-sdk
ENV ANDROID_SDK_ROOT $ANDROID_HOME
ENV PATH $PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools

# Install Android SDK
RUN mkdir -p ${ANDROID_HOME}/cmdline-tools
WORKDIR ${ANDROID_HOME}/cmdline-tools

# Download and install Android SDK Command-line Tools
RUN wget -q https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -O cmdline-tools.zip \
    && unzip cmdline-tools.zip \
    && mv cmdline-tools latest \
    && rm cmdline-tools.zip

# Accept licenses and install required SDK components
RUN yes | sdkmanager --licenses
RUN sdkmanager "platform-tools" "platforms;android-34" "build-tools;34.0.0"

# Set up working directory
WORKDIR /app

# Copy the project files
COPY . .

# Grant execution permission to gradlew
RUN chmod +x ./gradlew

# Build the project (optional, can be done at runtime)
# RUN ./gradlew build

# Default command
CMD ["./gradlew", "tasks"]