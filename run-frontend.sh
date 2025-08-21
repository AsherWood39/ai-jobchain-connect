#!/bin/bash

echo "🚀 Setting up AI JobChain Frontend..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 16 or higher."
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install npm."
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 16 ]; then
    echo "❌ Node.js version 16 or higher is required. Current version: $(node -v)"
    exit 1
fi

# Install dependencies
echo "📚 Installing dependencies..."
npm install

# Check if installation was successful
if [ ! -d "node_modules" ]; then
    echo "❌ Dependencies installation failed."
    exit 1
fi

echo "✅ Frontend setup complete!"
echo ""
echo "🎯 To start the frontend server:"
echo "   npm run dev"
echo ""
echo "🌐 Frontend will be available at: http://localhost:5173"
echo "📱 Backend API should be running at: http://localhost:8000"
