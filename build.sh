#!/bin/bash
set -e

echo "=== Building DevOps Application ==="

echo "Creating build directories..."
mkdir -p build/classes

echo "Compiling source files..."
find src -name "*.java" > sources.txt
javac -d build/classes @sources.txt

echo "=== Running Tests ==="
java -cp build/classes com.example.HelloDevOpsTest

echo "=== Creating JAR ==="
jar cfe app.jar com.example.HelloDevOps -C build/classes .

echo "JAR created: app.jar"

echo "=== Running Application ==="
java -jar app.jar

