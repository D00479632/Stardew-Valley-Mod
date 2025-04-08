# Stardew Valley Assistant Mod

This repository contains the final version of the Stardew Valley Assistant mod for my senior project at Utah Tech University. For the development history and technical details, please refer to the [senior project repository](https://github.com/D00479632/SeniorProject).

## About the Mod
The Stardew Valley Assistant is an AI-powered mod that allows you to ask questions about the game and receive intelligent responses. It runs completely offline on your computer, providing instant assistance without requiring an internet connection. The mod uses local AI models and a database to provide accurate information about:
- Crop recommendations and profitability
- Character schedules and gift preferences
- Crafting and processing advice
- And much more!

## System Requirements
Due to the local AI processing and database requirements, this mod needs:
- A computer with at least 8GB of RAM (16GB recommended)
- At least 10GB of free disk space for the AI model and database
- A modern CPU (4+ cores recommended)
- Windows 10/11, macOS 10.15+, or Linux

## Installation Instructions

### 1. Install SMAPI
SMAPI (Stardew Modding API) is required to run this mod and any other. Please follow the official installation guide:
[Installing SMAPI](https://stardewvalleywiki.com/Modding:Player_Guide/Getting_Started#Install_SMAPI)

### 2. Download and Install the Mod
1. Download the `InGameAssistant.zip` file from this repository
   - For general mod installation guidance, see [Finding and Installing Mods](https://stardewvalleywiki.com/Modding:Player_Guide/Getting_Started#Find_mods)
2. Locate your Stardew Valley game folder:
   - Follow the [official guide to find your game folder](https://stardewvalleywiki.com/Modding:Player_Guide/Getting_Started#Find_your_game_folder)
   - Extract the mod contents into the `Mods` folder within your game directory
3. Install Required Dependencies:
   - [SMAPI](https://smapi.io/) - The mod loader (required for all mods)
   - [StardewUI](https://www.nexusmods.com/stardewvalley/mods/28870) - Required for menu modifications

For additional modding information, please refer to:
- [Mod Installation Guide](https://stardewvalleywiki.com/Modding:Player_Guide/Getting_Started#Install_mods)
- [Mod Configuration](https://stardewvalleywiki.com/Modding:Player_Guide/Getting_Started#Configure_mods)
- [Mod Updates](https://stardewvalleywiki.com/Modding:Player_Guide/Getting_Started#Update_mods)
- [Mod Removal](https://stardewvalleywiki.com/Modding:Player_Guide/Getting_Started#Remove_mods)
- [Modding FAQ](https://stardewvalleywiki.com/Modding:Player_Guide/Getting_Started#Frequent_questions)

### 3. Configure Required Components

#### 3.1 Set Up Python Environment
```bash
# Create a new virtual environment
python -m venv .venv

# Activate the virtual environment
# Windows:
.venv\Scripts\activate
# Mac/Linux:
source .venv/bin/activate

# Install required Python packages
pip install -r requirements.txt
```

#### 3.2 Install Ollama and AI Model
1. Install [Ollama](https://ollama.ai/) following their official installation guide
2. Download the required AI model:
```bash
ollama pull gemma3:4b
```
Note: The gemma3:4b model requires approximately 4GB of disk space. You can use alternative models from the [Ollama model library](https://ollama.com/search), but you'll need to update the model name in the `scrypt.py` file's `get_ollama_response` function.

To verify your AI model installation:
```bash
ollama list
```
Expected output:
```bash
NAME           ID              SIZE      MODIFIED    
gemma3:4b      c0494fe00251    3.3 GB    2 weeks ago    
```

#### 3.3 Configure Marqo Search Engine
1. Install [Marqo](https://github.com/marqo-ai/marqo) following their official documentation
2. Verify Marqo is running:
```bash
docker ps
```
Expected output:
```bash
CONTAINER ID   IMAGE                  COMMAND                  CREATED       STATUS       PORTS                    NAMES
e9b51cc07670   marqoai/marqo:latest   "./run_marqo.sh ./ru…"   5 weeks ago   Up 9 hours   0.0.0.0:8882->8882/tcp   marqo
```

#### 3.4 Initialize the Database
The mod includes a `database.py` script that will index content from the [Stardew Valley Wiki](https://stardewvalleywiki.com/Stardew_Valley_Wiki). This process:
- Indexes approximately 2,000 wiki pages
- Requires significant CPU resources
- Takes approximately 2 hours to complete
- Only needs to be run once

```bash
# Navigate to the database directory
cd database

# Unzip the md directory
unzip md.zip

# Start indexing
python3 database.py
```

#### 3.5 Configure the Mod Settings
1. Locate the `config.json` file in your mod folder
2. Set the `PythonExePath` to your Python executable path
   - With your virtual environment activated, run `which python` (Mac/Linux) or `where python` (Windows)
   - Copy the output path into the config file

### 4. Testing the Mod
Before launching the game, you can test if the mod is working correctly by running the test script:

```bash
# Run the test script
python3 rag.py
```

This script will:
- Ask you to enter a question and process it like the mod would.
- Measure and display the time taken for each component:
  - Marqo search time (database lookup)
  - LLM response time (AI processing)
  - Total processing time
- Show you the actual response that would appear in-game

This test helps verify that:
- Your database is properly indexed
- Marqo is running correctly
- Ollama is functioning properly
- The entire system can generate responses

If the test runs successfully, your mod is ready to use in-game.

### 5. Using the Mod
1. Before launching the game I recommend to run the check_services.sh. You can just do `chmod +x check_sevices.sh` and then `./check_sevices.sh` to make
sure that ollama and marqo are running or otherwise the mod won't work.
2. Launch Stardew Valley like normal
3. The assistant will be automatically loaded
4. Press F8 during gameplay to open the assistant menu interface
5. Note: Responses may take a few seconds to generate as all processing is done locally
   - You can continue playing while waiting for responses
   - The game menu can be closed and reopened at any time



## Troubleshooting
If you encounter any issues:
1. Check the [SMAPI log](https://smapi.io/log) for error messages
2. Verify all components are properly installed:
   - Python virtual environment has all the requirements
   - Ollama and AI model
   - Marqo search engine
   - Database initialization
3. Ensure your `config.json` is correctly configured
4. Confirm both Ollama and Marqo services are running