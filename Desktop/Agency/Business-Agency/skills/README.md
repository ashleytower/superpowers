# Claude Code Skills Installation Guide

This directory contains two powerful Claude Code skills packaged as zip files:

## 📦 Available Skills

### 1. Playwright Browser Automation Skill
**File:** `playwright-skill.zip`
**Purpose:** Complete browser automation with Playwright for testing websites, automating interactions, and validating web functionality.

**Features:**
- Auto-detects running dev servers
- Writes clean test scripts to /tmp
- Visible browser testing by default
- Responsive design testing
- Login flow automation
- Form filling and validation
- Screenshot capture
- Link checking

### 2. iOS Simulator Skill
**File:** `ios-simulator-skill.zip`
**Purpose:** Efficient iOS app building, navigation, and testing using accessibility-first automation.

**Features:**
- Build Xcode projects and run tests
- Accessibility-first UI navigation
- Token-efficient output (97% reduction)
- Real-time log monitoring
- Visual regression testing
- WCAG compliance checking
- Complete debugging snapshots
- Test documentation with screenshots

---

## 🚀 Installation Instructions

### Option 1: Personal Skills Directory (Recommended for Individual Use)

Install skills globally for all your Claude Code projects:

```bash
# Create skills directory if it doesn't exist
mkdir -p ~/.claude/skills

# Extract Playwright skill
unzip playwright-skill.zip -d ~/.claude/skills/

# Extract iOS Simulator skill
unzip ios-simulator-skill.zip -d ~/.claude/skills/ios-simulator-skill/

# Verify installation
ls ~/.claude/skills/playwright-skill/SKILL.md
ls ~/.claude/skills/ios-simulator-skill/SKILL.md
```

### Option 2: Project-Specific Skills Directory (Recommended for Teams)

Install skills for this specific project only:

```bash
# Create project skills directory if it doesn't exist
mkdir -p .claude/skills

# Extract Playwright skill
unzip playwright-skill.zip -d .claude/skills/

# Extract iOS Simulator skill
unzip ios-simulator-skill.zip -d .claude/skills/ios-simulator-skill/

# Verify installation
ls .claude/skills/playwright-skill/SKILL.md
ls .claude/skills/ios-simulator-skill/SKILL.md

# Commit to share with team
git add .claude/skills/
git commit -m "Add Playwright and iOS Simulator skills"
```

---

## 🔧 Setup Requirements

### Playwright Skill Setup

```bash
# Navigate to the skill directory
cd ~/.claude/skills/playwright-skill
# OR for project-specific: cd .claude/skills/playwright-skill

# Install dependencies (only needed once)
npm run setup
```

This installs Playwright and Chromium browser.

### iOS Simulator Skill Setup

**Prerequisites:**
- macOS 12+
- Xcode Command Line Tools: `xcode-select --install`
- Python 3.x (pre-installed on macOS)
- IDB (optional but recommended): `brew install idb-companion`
- Pillow (optional, for visual diffs): `pip3 install pillow`

**Health Check:**
```bash
# Navigate to the skill directory
cd ~/.claude/skills/ios-simulator-skill
# OR for project-specific: cd .claude/skills/ios-simulator-skill

# Run health check to verify everything works
bash skill/scripts/sim_health_check.sh
```

---

## 📝 How to Use These Skills

### Automatic Usage (Recommended)

Claude Code automatically detects when to use these skills based on your requests. Just ask naturally:

**Playwright Examples:**
```
"Test if the marketing page looks good on mobile and desktop"
"Check if the login form redirects correctly"
"Take a screenshot of the homepage"
"Test all the links on this page"
```

**iOS Simulator Examples:**
```
"Navigate to the login screen in my iOS simulator"
"Fill in the username field with test@example.com"
"What buttons are available on this screen?"
"Check this screen for accessibility issues"
"Run the iOS build and show me any errors"
```

### Manual Script Usage (Optional)

You can also run scripts directly from the command line.

**Playwright Manual Usage:**
```bash
# Detect running dev servers
cd ~/.claude/skills/playwright-skill && node -e "require('./lib/helpers').detectDevServers().then(s => console.log(JSON.stringify(s)))"

# Run a custom test script
cd ~/.claude/skills/playwright-skill && node run.js /tmp/my-test.js
```

**iOS Simulator Manual Usage:**
```bash
# Map current screen
python ~/.claude/skills/ios-simulator-skill/skill/scripts/screen_mapper.py

# Launch an app
python ~/.claude/skills/ios-simulator-skill/skill/scripts/app_launcher.py --launch com.example.app

# Find and tap a button
python ~/.claude/skills/ios-simulator-skill/skill/scripts/navigator.py --find-text "Login" --tap

# Check accessibility
python ~/.claude/skills/ios-simulator-skill/skill/scripts/accessibility_audit.py
```

---

## 📚 Documentation

### Playwright Skill
- Full documentation: `~/.claude/skills/playwright-skill/SKILL.md`
- Common patterns: Login flows, form filling, responsive testing, link checking
- Inline execution for quick tasks

### iOS Simulator Skill
- Full documentation: `~/.claude/skills/ios-simulator-skill/SKILL.md`
- References: `~/.claude/skills/ios-simulator-skill/skill/references/`
- Examples: `~/.claude/skills/ios-simulator-skill/skill/examples/`

---

## 🛠️ Troubleshooting

### Skills Not Loading
```bash
# 1. Verify skills are in the correct location
ls ~/.claude/skills/*/SKILL.md

# 2. Check SKILL.md files have valid YAML frontmatter
head -10 ~/.claude/skills/playwright-skill/SKILL.md
head -10 ~/.claude/skills/ios-simulator-skill/SKILL.md

# 3. Restart Claude Code
# Skills are loaded at startup - changes require restart
```

### Playwright Skill Issues
```bash
# Re-run setup if dependencies are missing
cd ~/.claude/skills/playwright-skill
npm run setup
```

### iOS Simulator Skill Issues
```bash
# Run health check to diagnose
cd ~/.claude/skills/ios-simulator-skill
bash skill/scripts/sim_health_check.sh

# Each script supports --help
python skill/scripts/navigator.py --help
python skill/scripts/screen_mapper.py --help
```

---

## 🎯 Quick Start Examples

### Playwright: Test a Login Flow
```bash
# Let Claude do it automatically:
"Test the login flow with username test@example.com and password demo123"

# Or manually:
cd ~/.claude/skills/playwright-skill
# Claude will auto-detect server and write custom test script to /tmp
# Then execute: node run.js /tmp/playwright-test-login.js
```

### iOS Simulator: Complete Login Test
```bash
# Let Claude do it automatically:
"Launch the app, navigate to login, and test the login flow"

# Or manually:
cd ~/.claude/skills/ios-simulator-skill
python skill/scripts/app_launcher.py --launch com.example.app
python skill/scripts/screen_mapper.py
python skill/scripts/navigator.py --find-type TextField --index 0 --enter-text "user@test.com"
python skill/scripts/navigator.py --find-type SecureTextField --enter-text "password123"
python skill/scripts/navigator.py --find-text "Login" --tap
```

---

## 📦 Updating Skills

To update either skill, simply download the latest release and extract again:

```bash
# For personal installation
unzip -o playwright-skill.zip -d ~/.claude/skills/
unzip -o ios-simulator-skill.zip -d ~/.claude/skills/ios-simulator-skill/

# For project installation
unzip -o playwright-skill.zip -d .claude/skills/
unzip -o ios-simulator-skill.zip -d .claude/skills/ios-simulator-skill/
```

---

## 🔗 Resources

- **Playwright Skill Repository:** https://github.com/lackeyjb/playwright-skill
- **iOS Simulator Skill Repository:** https://github.com/conorluddy/ios-simulator-skill
- **Claude Code Skills Documentation:** https://docs.claude.com/en/docs/claude-code/skills

---

**Installation Date:** Generated $(date +%Y-%m-%d)
**Ready to use!** Just ask Claude to test your web apps or iOS apps naturally.
