#!/usr/bin/env bash

# Script to install skills using `npx skills add` command

# Requirements: node npm


# Function to add a skill from GitHub URL
# Arguments:
#   $1 - GitHub repository URL
#   $2 - Skill name
add_skill() {
    local url="$1"
    local skill="$2"
    if [ -z "$skill" ]; then
        local skill_rep="all skills"
        echo "Installing skills from $url..."
        npx skills add "$url" --all -y -a opencode
    else
        local skill_rep="$skill"
        echo "Installing skills from $url..."
        npx skills add "$url" --skill "$skill" -y -a opencode
    fi

    if [ $? -eq 0 ]; then
        echo "Successfully installed $skill_rep."
    else
        echo "Failed to install $skill_rep."
    fi
}

# Install the specified skills
echo "Starting skill installation process..."

add_skill https://github.com/vercel-labs/skills find-skills
add_skill https://github.com/useai-pro/openclaw-skills-security skill-vetter
add_skill https://github.com/anthropics/skills skill-creator
add_skill https://github.com/softaworks/agent-toolkit command-creator
add_skill https://github.com/charon-fan/agent-playbook self-improving-agent
add_skill https://github.com/alphaonedev/openclaw-graph macos-automation
add_skill https://github.com/ailabs-393/ai-labs-claude-skill research-paper-writer
add_skill https://github.com/sundial-org/awesome-openclaw-skills arxiv-watcher
add_skill https://github.com/parcadei/continuous-claude-v3 math
add_skill https://github.com/shubhamsaboo/awesome-llm-apps python-expert
add_skill https://github.com/wshobson/agents python-packaging

# add_skill https://github.com/geeks-accelerator/in-bed-ai love
# add_skill https://github.com/supercent-io/skills-template workflow-automation
# add_skill https://github.com/supercent-io/skills-template data-analysis
# add_skill https://github.com/anthropics/knowledge-work-plugins data-visualization
# add_skill https://github.com/yonatangross/orchestkit ollama-local
# add_skill https://github.com/cameronfreer/lean4-skills lean4
# add_skill https://github.com/claude-office-skills/skills stock-analysis
# add_skill https://github.com/sugarforever/01coder-agent-skills china-stock-analysis
# add_skill https://github.com/kepano/obsidian-skills obsidian-markdown
# add_skill https://github.com/adisinghstudent/easyclaw openclaw-config
# add_skill https://github.com/wshobson/agents python-performance-optimization
# add_skill https://github.com/thebushidocollective/han tensorflow-neural-networks
# add_skill https://github.com/mindrally/skills scikit-learn-best-practices
# add_skill https://github.com/rysweet/amplihack psychologist-analyst
# add_skill https://github.com/mims-harvard/tooluniverse tooluniverse-neuroscience

echo "Skill installation process completed."

