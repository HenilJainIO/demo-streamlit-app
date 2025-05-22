#!/bin/bash

echo "📦 Setting up environment for Demo Streamlit App..."

# Create Python virtual environment
echo "🔧 Creating Python virtual environment..."
python3 -m venv .venv

# Activate virtual environment
echo "🔌 Activating virtual environment..."
source .venv/bin/activate

# Install requirements
echo "📥 Installing required packages..."

# Create a temporary requirements file
cp requirements.txt requirements.temp.txt

# Check if connector directory exists
if [ ! -d "../connector-userid-py" ]; then
    echo "⚠️ Local connector package not found."
    echo "📦 Installing io_connect from PyPI instead..."
    # Remove the local path and add PyPI package
    sed -i '' '/..\/connector-userid-py/d' requirements.temp.txt
    echo "io_connect" >> requirements.temp.txt
else
    echo "✅ Using local connector package..."
fi

# Install from temporary requirements file
pip install -r requirements.temp.txt

# Clean up
rm requirements.temp.txt

echo "✅ Setup complete!"
echo ""
echo "🚀 To run the app:"
echo "1. Activate the virtual environment: source .venv/bin/activate"
echo "2. Run the app: streamlit run main.py"
echo ""
echo "🔄 The app will be available at http://localhost:8501"
echo ""

# Deactivate virtual environment
deactivate