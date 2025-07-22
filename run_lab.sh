#!/bin/bash

# Lab4 Arithmetic ESP32 - Quick Start Script
# This script helps setup and run the ESP32 arithmetic project

echo "=== Lab4 Arithmetic ESP32 Quick Start ==="

# Function to check if Docker is running
check_docker() {
    if ! docker info > /dev/null 2>&1; then
        echo "❌ Docker is not running. Please start Docker first."
        exit 1
    fi
    echo "✅ Docker is running"
}

# Function to setup the project
setup_project() {
    echo "🔧 Setting up project..."
    
    # Build and start the container
    echo "Starting Docker container..."
    docker-compose up -d
    
    if [ $? -eq 0 ]; then
        echo "✅ Container started successfully"
    else
        echo "❌ Failed to start container"
        exit 1
    fi
}

# Function to build the project
build_project() {
    echo "🔨 Building ESP32 project..."
    
    docker exec esp32-lab4 bash -c "
        cd /project &&
        . \$IDF_PATH/export.sh &&
        idf.py set-target esp32 &&
        idf.py build
    "
    
    if [ $? -eq 0 ]; then
        echo "✅ Build completed successfully"
    else
        echo "❌ Build failed"
        exit 1
    fi
}

# Function to run on QEMU
run_qemu() {
    echo "🚀 Running on ESP32 QEMU..."
    echo "📝 Press Ctrl+] to exit monitor"
    echo "⏳ Starting in 3 seconds..."
    sleep 3
    
    docker exec -it esp32-lab4 bash -c "
        cd /project &&
        . \$IDF_PATH/export.sh &&
        idf.py qemu monitor
    "
}

# Function to show project info
show_info() {
    echo "📊 Project Information:"
    echo "   Project: Lab4 Arithmetic Operations"
    echo "   Target: ESP32"
    echo "   Framework: ESP-IDF"
    echo "   Container: esp32-lab4"
    echo ""
    echo "📁 Project Structure:"
    echo "   ├── main/"
    echo "   │   ├── main.c (Main arithmetic program)"
    echo "   │   └── CMakeLists.txt"
    echo "   ├── CMakeLists.txt"
    echo "   ├── docker-compose.yml"
    echo "   └── README.md"
}

# Function to clean up
cleanup() {
    echo "🧹 Cleaning up..."
    docker-compose down
    echo "✅ Cleanup completed"
}

# Function to show help
show_help() {
    echo "Usage: $0 [command]"
    echo ""
    echo "Commands:"
    echo "  setup    - Setup and start Docker container"
    echo "  build    - Build the ESP32 project"
    echo "  run      - Run the project on QEMU"
    echo "  info     - Show project information"
    echo "  clean    - Clean up containers"
    echo "  all      - Run setup, build, and run (default)"
    echo "  help     - Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0           # Run full sequence (setup + build + run)"
    echo "  $0 setup     # Only setup container"
    echo "  $0 build     # Only build project"
    echo "  $0 run       # Only run on QEMU"
}

# Main script logic
case "${1:-all}" in
    "setup")
        check_docker
        setup_project
        ;;
    "build")
        check_docker
        build_project
        ;;
    "run")
        check_docker
        run_qemu
        ;;
    "info")
        show_info
        ;;
    "clean")
        cleanup
        ;;
    "all")
        check_docker
        show_info
        setup_project
        build_project
        run_qemu
        ;;
    "help"|"-h"|"--help")
        show_help
        ;;
    *)
        echo "❌ Unknown command: $1"
        show_help
        exit 1
        ;;
esac

echo "✅ Script completed successfully!"
