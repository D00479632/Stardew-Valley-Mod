#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Detect OS for platform-specific commands
OS="unknown"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macos"
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" || "$OSTYPE" == "cygwin" ]]; then
    OS="windows"
fi

echo "Checking services status on ${OS}..."

# Check if Ollama is running (cross-platform)
OLLAMA_RUNNING=false

if [[ "$OS" == "windows" ]]; then
    # Windows check using tasklist
    if tasklist 2>NUL | findstr /i "ollama.exe" >NUL; then
        OLLAMA_RUNNING=true
    fi
else
    # Linux/macOS check using pgrep
    if pgrep -x "ollama" > /dev/null; then
        OLLAMA_RUNNING=true
    fi
fi

if [[ "$OLLAMA_RUNNING" == "true" ]]; then
    echo -e "${GREEN}✓ Ollama is running${NC}"
    
    # Check if Gemma model is available
    if ollama list 2>/dev/null | grep -q "gemma3:4b"; then
        echo -e "${GREEN}✓ Gemma3:4B model is available${NC}"
    else
        echo -e "${YELLOW}! Gemma3:4B model is not available${NC}"
        echo "To pull the Gemma3:4B model, run: ollama pull gemma3:4b"
        echo "If you decided to use another model make sure you changed it in script.py"
    fi
else
    echo -e "${RED}✗ Ollama is not running${NC}"
    echo "To start Ollama, run: ollama serve"
fi

# Check if Marqo is running (cross-platform, uses curl)
if command -v curl &>/dev/null; then
    # Get HTTP status code from Marqo health endpoint
    HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8882/health)
    if [ "$HTTP_STATUS" = "200" ]; then
        echo -e "${GREEN}✓ Marqo is running${NC}"
    else
        echo -e "${RED}✗ Marqo is not running (HTTP status: $HTTP_STATUS)${NC}"
        echo "To start Marqo, run: docker run -p 8882:8882 marqoai/marqo:latest"
    fi
else
    echo -e "${RED}✗ Cannot check if Marqo is running - curl not found${NC}"
    echo "To start Marqo, run: docker run -p 8882:8882 marqoai/marqo:latest"
fi 

# Check if port 8080 is available (cross-platform)
PORT_CHECK_SUCCESS=false
PORT_AVAILABLE=true

if command -v nc &>/dev/null; then
    # Linux and macOS with netcat
    PORT_CHECK_SUCCESS=true
    if nc -z localhost 8080 &>/dev/null; then
        PORT_AVAILABLE=false
    fi
elif command -v netstat &>/dev/null; then
    # Windows or systems with netstat
    PORT_CHECK_SUCCESS=true
    if [[ "$OS" == "windows" ]]; then
        if netstat -ano | findstr ":8080" >NUL; then
            PORT_AVAILABLE=false
        fi
    else
        if netstat -ano | grep -q ":8080 "; then
            PORT_AVAILABLE=false
        fi
    fi
fi

if [[ "$PORT_CHECK_SUCCESS" == "true" ]]; then
    if [[ "$PORT_AVAILABLE" == "true" ]]; then
        echo -e "${GREEN}✓ Port 8080 is available${NC}"
    else
        echo -e "${YELLOW}! Port 8080 is in use${NC}"
    fi
else
    echo -e "${YELLOW}! Cannot check port 8080 - neither netcat nor netstat found${NC}"
fi 
