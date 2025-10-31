#!/bin/bash

# Quick Install Script for Claude Code Skills
# This script installs all superpowers and claude-skills to Claude Code
#
# Usage: bash QUICK-INSTALL-CLAUDE-CODE.sh

set -e

echo "========================================="
echo "Claude Code Skills - Quick Installation"
echo "========================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CLAUDE_SKILLS_DIR="$(dirname "$SCRIPT_DIR")/claude-skills-review"

# Create skills directory if it doesn't exist
echo -e "${BLUE}Creating Claude Code skills directory...${NC}"
mkdir -p ~/.claude/skills
echo -e "${GREEN}✓${NC} Skills directory ready"
echo ""

# Install Superpowers skills
echo -e "${BLUE}Installing Superpowers skills (46 skills)...${NC}"
cd ~/.claude/skills

# Symlink all superpowers skills
for category in "$SCRIPT_DIR/all-skills"/*; do
    if [ -d "$category" ]; then
        for skill in "$category"/*; do
            if [ -d "$skill" ] && [ -f "$skill/SKILL.md" ]; then
                skill_name=$(basename "$skill")
                ln -sf "$skill" "$skill_name" 2>/dev/null
                echo -e "${GREEN}✓${NC} $skill_name"
            fi
        done
    fi
done

echo ""

# Install Claude-Skills advisors
if [ -d "$CLAUDE_SKILLS_DIR" ]; then
    echo -e "${BLUE}Installing Claude-Skills advisors (36 skills)...${NC}"
    cd "$CLAUDE_SKILLS_DIR"

    for category in c-level-advisor engineering-team marketing-skill product-team ra-qm-team project-management; do
        if [ -d "$category" ]; then
            for skill in "$category"/*; do
                if [ -d "$skill" ] && [ -f "$skill/SKILL.md" ]; then
                    skill_name=$(basename "$skill")
                    ln -sf "$(pwd)/$skill" ~/.claude/skills/"$skill_name" 2>/dev/null
                    echo -e "${GREEN}✓${NC} $skill_name"
                fi
            done
        fi
    done
else
    echo -e "${YELLOW}⚠${NC} Claude-skills repository not found at: $CLAUDE_SKILLS_DIR"
    echo "   Clone it with: cd $(dirname "$SCRIPT_DIR") && git clone https://github.com/ashleytower/claude-skills.git claude-skills-review"
fi

echo ""
echo "========================================="
echo -e "${GREEN}✅ Installation Complete!${NC}"
echo "========================================="
echo ""

# Count installed skills
SKILL_COUNT=$(find ~/.claude/skills -name "SKILL.md" | wc -l)
echo "📊 Total Skills Installed: $SKILL_COUNT"
echo ""

echo "🎯 How to Use:"
echo "  1. Type '/' in Claude Code to see all available skills"
echo "  2. Start typing to filter (e.g., '/playwright')"
echo "  3. Press Tab to autocomplete"
echo ""

echo "📚 Examples:"
echo "  /playwright-browser-automation   - Automate web browsers"
echo "  /senior-architect                - Get architecture advice"
echo "  /test-driven-development         - TDD workflows"
echo "  /docx                            - Work with Word documents"
echo "  /product-strategist              - Product strategy guidance"
echo ""

echo "🔗 Documentation:"
echo "  • Superpowers: https://github.com/ashleytower/superpowers"
echo "  • Claude-Skills: https://github.com/ashleytower/claude-skills"
echo ""

echo -e "${GREEN}Happy coding! 🚀${NC}"
