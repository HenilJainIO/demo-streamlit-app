# Demo Streamlit App

A Streamlit application for testing and development purposes. This app allows you to visualize and interact with device sensor data from the FaclonLabs platform.

> **Note:** This application is a subpart of the AI-SDK ecosystem developed by FaclonLabs. It demonstrates the capabilities of the SDK for data visualization and interaction.

## Features

- Select devices and sensors
- Specify date and time ranges for data retrieval
- View last data points
- View timeseries data

## Prerequisites

- Python 3.6 or higher
- Git

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/HenilJainIO/demo-streamlit-app.git
cd demo-streamlit-app
```

### Setup Environment

Run the provided script to set up the virtual environment and install dependencies:

```bash
chmod +x run.sh
./run.sh
```

This script will:
1. Create a Python virtual environment (`.venv`)
2. Activate the virtual environment
3. Install required dependencies from `requirements.txt`
4. Automatically check if the local connector package is available and use the PyPI version if it's not

### Activate the Virtual Environment

Before running the app, you need to activate the virtual environment:

```bash
source .venv/bin/activate
```

### Run the App

Once the environment is activated, you can run the Streamlit app with:

```bash
streamlit run main.py
```

The app will be available at http://localhost:8501 in your web browser.

### Testing

Follow these steps to test the application:

1. Select a data source from the dropdown
2. Choose one or more sensors (optional)
3. Set the start and end date/time for your data query
4. Click "Fetch data" to retrieve and display the results

## Project Structure

- `main.py`: The main Streamlit application
- `constants.py`: Configuration constants
- `mappingCreator.py`: Utilities for data mapping
- `requirements.txt`: Required Python packages
- `run.sh`: Setup script for the virtual environment

## Dependencies

- Streamlit: Web application framework
- Plotly: Interactive visualization library
- io_connect: Custom connector package for accessing the data platform (either from local path or PyPI)
- **AI-SDK**: This app leverages components from the FaclonLabs AI-SDK

## Troubleshooting

If you encounter issues with the connector package:
- By default, the setup script checks for a local connector package (`../connector-userid-py`). If not found, it installs `io_connect` from PyPI instead.
- If you have a custom installation of the connector, you may need to modify the `requirements.txt` file or install it manually.
- For more information on the AI-SDK and its components, please refer to the main [AI-SDK documentation](https://github.com/Faclon-Labs/AI-SDK-Wizard.git).
