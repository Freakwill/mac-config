#!/usr/bin/env bash

# Script to install skills using npx skills add command
# Checks for node.js installation before proceeding

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if node is installed
if ! command_exists node; then
    echo "Error: node command not found. Please install Node.js to continue."
    exit 1
fi

# Function to add a skill from GitHub URL
# Takes two arguments:
# $1 - GitHub repository URL
# $2 - Skill name
add_skill() {
    local url="$1"
    local skill="$2"
    
    echo "Installing skill '$skill' from $url..."
    npx skills add "$url" --skill "$skill" -y -a opencode
    
    # Check if the command was successful
    if [ $? -eq 0 ]; then
        echo "Successfully installed skill '$skill'"
    else
        echo "Failed to install skill '$skill'"
    fi
}

# Install the specified skills
echo "Starting skill installation process..."

add_skill "https://github.com/parcadei/continuous-claude-v3" "math"
add_skill "https://github.com/sundial-org/awesome-openclaw-skills" "arxiv-watcher"
add_skill "https://github.com/anthropics/skills" "skill-creator"
add_skill "https://github.com/vercel-labs/skills" "find-skills"
add_skill "https://github.com/charon-fan/agent-playbook" "self-improving-agent"
add_skill "https://github.com/ailabs-393/ai-labs-claude-skill" "research-paper-writer"
add_skill "npx skills add https://github.com/shubhamsaboo/awesome-llm-apps" "python-expert"
add_skill "https://github.com/wshobson/agents" "python-packaging"
add_skill "https://github.com/alphaonedev/openclaw-graph" "macos-automation"
add_skill "https://github.com/rysweet/amplihack" "psychologist-analyst"

echo "Skill installation process completed."