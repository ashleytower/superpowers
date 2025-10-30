# Skills Installation Guide

Complete instructions for installing Claude Code skills in both Claude Code CLI and Claude Desktop.

## Table of Contents
- [Claude Code Installation](#claude-code-installation)
- [Claude Desktop Installation](#claude-desktop-installation)
- [Verification](#verification)
- [Troubleshooting](#troubleshooting)

---

## Claude Code Installation

### Prerequisites
- Claude Code CLI installed (`claude-code --version`)
- Skills directory at `~/.claude/skills/` (created automatically)

### Method 1: Symlink (Recommended for Development)

**Advantages**: Changes to skills automatically reflect, easy updates via git pull

```bash
# Navigate to your home directory
cd ~

# Clone the repository (if not already cloned)
git clone https://github.com/ashleytower/superpowers.git

# Create skills directory if it doesn't exist
mkdir -p ~/.claude/skills

# Symlink specific category
ln -s ~/superpowers/all-skills/development-skills/* ~/.claude/skills/

# Or symlink all skills from all categories
ln -s ~/superpowers/all-skills/*/* ~/.claude/skills/

# Verify
ls -la ~/.claude/skills/
```

### Method 2: Copy Skills

**Advantages**: Isolated from repository changes, can customize individually

```bash
# Copy specific skill
cp -r ~/superpowers/all-skills/development-skills/playwright-browser-automation ~/.claude/skills/

# Copy entire category
cp -r ~/superpowers/all-skills/development-skills/* ~/.claude/skills/

# Copy all skills
cp -r ~/superpowers/all-skills/*/* ~/.claude/skills/

# Verify
claude-code skills list
```

### Method 3: Install from Source

```bash
# Clone and navigate
git clone https://github.com/ashleytower/superpowers.git
cd superpowers

# Use the auto-sync-skills skill to manage installations
claude-code skill install ./all-skills/development-skills/auto-sync-skills

# Then use auto-sync to install others
claude-code run auto-sync-skills
```

---

## Claude Desktop Installation

### Prerequisites
- Claude Desktop application installed
- Skills directory location (varies by OS):
  - **macOS**: `~/Library/Application Support/Claude/skills/`
  - **Windows**: `%APPDATA%\Claude\skills\`
  - **Linux**: `~/.config/Claude/skills/`

### Method 1: Individual Skill ZIPs

**Best for**: Installing specific skills you need

1. **Download ZIP**:
   - Navigate to `superpowers/skill-zips/individual/`
   - Download desired skill ZIP (e.g., `playwright-browser-automation.zip`)

2. **Extract**:
   ```bash
   # macOS/Linux
   unzip playwright-browser-automation.zip -d ~/Library/Application\ Support/Claude/skills/

   # Windows PowerShell
   Expand-Archive playwright-browser-automation.zip -DestinationPath $env:APPDATA\Claude\skills\
   ```

3. **Restart Claude Desktop**

### Method 2: Category Bundles

**Best for**: Installing complete skill categories

1. **Download Bundle**:
   - Navigate to `superpowers/skill-zips/bundles/`
   - Choose category:
     - `development-skills.zip` (32 skills)
     - `document-skills.zip` (4 skills)
     - `creative-skills.zip` (5 skills)
     - `business-skills.zip` (3 skills)
     - `productivity-skills.zip` (2 skills)

2. **Extract**:
   ```bash
   # macOS
   cd ~/Downloads
   unzip development-skills.zip
   cp -r all-skills/development-skills/* ~/Library/Application\ Support/Claude/skills/

   # Windows PowerShell
   cd $env:USERPROFILE\Downloads
   Expand-Archive development-skills.zip -DestinationPath .
   Copy-Item -Recurse all-skills\development-skills\* $env:APPDATA\Claude\skills\

   # Linux
   cd ~/Downloads
   unzip development-skills.zip
   cp -r all-skills/development-skills/* ~/.config/Claude/skills/
   ```

3. **Restart Claude Desktop**

### Method 3: Clone Repository (Power Users)

```bash
# Clone repository
git clone https://github.com/ashleytower/superpowers.git
cd superpowers

# Symlink or copy all skills
# macOS
ln -s $(pwd)/all-skills/*/* ~/Library/Application\ Support/Claude/skills/

# Linux
ln -s $(pwd)/all-skills/*/* ~/.config/Claude/skills/

# Windows (PowerShell as Administrator)
cmd /c mklink /D "$env:APPDATA\Claude\skills" "$(pwd)\all-skills"
```

---

## Verification

### Claude Code

```bash
# List all installed skills
claude-code skills list

# Show skill details
claude-code skills info playwright-browser-automation

# Test a skill
claude-code run brainstorming "Brainstorm ideas for a new feature"
```

### Claude Desktop

1. Open Claude Desktop
2. Type `/` to see available slash commands
3. Look for installed skill commands
4. Try: `/brainstorm Ideas for improving productivity`

**Visual Verification**:
- Skills appear in the skills menu
- Slash commands auto-complete
- Skill descriptions visible in tooltips

---

## Troubleshooting

### Claude Code Issues

**Skills not appearing**:
```bash
# Check skills directory
ls -la ~/.claude/skills/

# Verify SKILL.md exists
cat ~/.claude/skills/playwright-browser-automation/SKILL.md

# Check permissions
chmod -R 755 ~/.claude/skills/

# Restart Claude Code
claude-code restart
```

**Symlink issues (macOS)**:
```bash
# Remove broken symlinks
find ~/.claude/skills/ -type l ! -exec test -e {} \; -delete

# Recreate symlinks
ln -sf ~/superpowers/all-skills/*/* ~/.claude/skills/
```

### Claude Desktop Issues

**Skills not loading**:
1. **Check directory location**:
   ```bash
   # macOS
   ls -la ~/Library/Application\ Support/Claude/skills/

   # Windows PowerShell
   Get-ChildItem $env:APPDATA\Claude\skills\

   # Linux
   ls -la ~/.config/Claude/skills/
   ```

2. **Verify SKILL.md format**:
   - Must have valid frontmatter
   - Required fields: name, description, version
   - Check for syntax errors

3. **Check permissions**:
   ```bash
   # macOS/Linux
   chmod -R 755 ~/Library/Application\ Support/Claude/skills/
   ```

4. **Clear cache and restart**:
   - Close Claude Desktop completely
   - Clear application cache (varies by OS)
   - Restart Claude Desktop

**ZIP extraction issues**:
- Ensure you're extracting to the correct directory
- Check for nested folders (should be `/skills/skill-name/SKILL.md`, not `/skills/skill-name/skill-name/SKILL.md`)
- Use command line tools for reliability

### Common Issues

**Missing dependencies**:
Some skills require additional tools:
- `playwright-browser-automation`: requires Node.js and Playwright
- `ios-simulator-testing`: requires Xcode and iOS Simulator
- `docx`, `pdf`, `pptx`, `xlsx`: may require Python packages

Check individual skill README or SKILL.md for dependencies.

**Skill conflicts**:
If skills have conflicting slash commands:
```bash
# Rename skill directory
mv ~/.claude/skills/skill-name ~/.claude/skills/my-skill-name

# Update SKILL.md name field accordingly
```

**Permission denied errors**:
```bash
# Fix ownership
sudo chown -R $USER ~/.claude/skills/

# Fix permissions
chmod -R 755 ~/.claude/skills/
```

---

## Updating Skills

### Claude Code (Symlink Method)
```bash
cd ~/superpowers
git pull origin main
# Skills automatically updated via symlinks
```

### Claude Code (Copy Method)
```bash
cd ~/superpowers
git pull origin main
cp -r all-skills/*/* ~/.claude/skills/
```

### Claude Desktop
1. Download latest ZIPs from GitHub
2. Extract to skills directory (overwrite existing)
3. Restart Claude Desktop

---

## Uninstalling Skills

### Claude Code
```bash
# Remove individual skill
rm -rf ~/.claude/skills/skill-name

# Remove all symlinks
find ~/.claude/skills/ -type l -delete

# Remove all skills
rm -rf ~/.claude/skills/*
```

### Claude Desktop
```bash
# macOS
rm -rf ~/Library/Application\ Support/Claude/skills/*

# Windows PowerShell
Remove-Item -Recurse $env:APPDATA\Claude\skills\*

# Linux
rm -rf ~/.config/Claude/skills/*
```

Restart application after uninstalling.

---

## Advanced Configuration

### Custom Skills Directory

Create `~/.claude/config.json`:
```json
{
  "skills_directory": "/custom/path/to/skills"
}
```

### Selective Installation Script

Create `install-favorites.sh`:
```bash
#!/bin/bash

SKILLS_DIR=~/.claude/skills
REPO_DIR=~/superpowers

# Your favorite skills
FAVORITES=(
    "development-skills/playwright-browser-automation"
    "development-skills/test-driven-development"
    "creative-skills/canvas-design"
    "document-skills/pdf"
)

for skill in "${FAVORITES[@]}"; do
    ln -sf "$REPO_DIR/all-skills/$skill" "$SKILLS_DIR/"
    echo "Installed: $skill"
done
```

---

## Getting Help

- **GitHub Issues**: https://github.com/ashleytower/superpowers/issues
- **Claude Code Docs**: https://docs.claude.com/claude-code
- **Community Discord**: [Link to community]

---

**Last Updated**: 2025-10-30
**Version**: 4.0.0
