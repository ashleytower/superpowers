# Claude Code Superpowers 🚀

A comprehensive skills marketplace for Claude Code featuring browser automation and iOS testing capabilities.

## 🎯 Available Skills

### 1. Playwright Browser Automation
Complete browser automation with Playwright for testing websites, automating interactions, and validating web functionality.

**Features:**
- ✅ Auto-detects running dev servers
- ✅ Writes clean test scripts to /tmp
- ✅ Visible browser testing by default
- ✅ Responsive design testing
- ✅ Login flow automation
- ✅ Form filling and validation
- ✅ Screenshot capture
- ✅ Link checking

[Documentation](skills/playwright-browser-automation/README.md) | [Download ZIP](skills/playwright-browser-automation/playwright-skill.zip)

### 2. iOS Simulator Testing
Efficient iOS app building, navigation, and testing using accessibility-first automation with 97% token reduction.

**Features:**
- ✅ Build & Test Xcode projects
- ✅ Accessibility-first UI navigation
- ✅ Token-efficient output
- ✅ WCAG compliance checking
- ✅ Visual regression testing
- ✅ Complete debugging snapshots
- ✅ Auto-generated test reports

[Documentation](skills/ios-simulator-testing/README.md) | [Download ZIP](skills/ios-simulator-testing/ios-simulator-skill.zip)

## 📦 Installation

### Option 1: Install via Claude Code Plugin System (Recommended)

```bash
# Add this marketplace to Claude Code
/plugin marketplace add ashleytower/superpowers

# Install skills
/plugin install playwright-browser-automation@superpowers
/plugin install ios-simulator-testing@superpowers

# Update later
/plugin update playwright-browser-automation
/plugin update ios-simulator-testing
```

### Option 2: Manual Installation

#### Personal Installation (All Projects)
```bash
mkdir -p ~/.claude/skills

# Playwright skill
unzip skills/playwright-browser-automation/playwright-skill.zip -d ~/.claude/skills/

# iOS Simulator skill
unzip skills/ios-simulator-testing/ios-simulator-skill.zip -d ~/.claude/skills/ios-simulator-skill/
```

#### Project Installation (Specific Project)
```bash
mkdir -p .claude/skills

# Playwright skill
unzip skills/playwright-browser-automation/playwright-skill.zip -d .claude/skills/

# iOS Simulator skill
unzip skills/ios-simulator-testing/ios-simulator-skill.zip -d .claude/skills/ios-simulator-skill/
```

## 🔧 Setup

### Playwright Skill
```bash
cd ~/.claude/skills/playwright-skill
npm run setup
```

### iOS Simulator Skill
```bash
# Prerequisites
xcode-select --install
brew install idb-companion
pip3 install pillow

# Verify
bash ~/.claude/skills/ios-simulator-skill/skill/scripts/sim_health_check.sh
```

## 💡 Usage

After installation, Claude Code automatically uses these skills when you ask:

**Playwright examples:**
- "Test if the login page works on mobile and desktop"
- "Check all links on this page"
- "Take a screenshot of the homepage"

**iOS Simulator examples:**
- "Navigate to the login screen in my iOS app"
- "Check this screen for accessibility issues"
- "Run my iOS build and show me any errors"

## 📚 Documentation

- [Skills Installation Guide](skills/README.md)
- [Playwright Skill README](skills/playwright-browser-automation/README.md)
- [iOS Simulator Skill README](skills/ios-simulator-testing/README.md)

## 🔄 Automatic Updates

When installed via the plugin system, skills automatically update when new versions are pushed to this repository.

To manually update:
```bash
/plugin update playwright-browser-automation
/plugin update ios-simulator-testing
```

## 🤝 Contributing

Contributions welcome! Please feel free to submit a Pull Request.

## 📄 License

- **Playwright Skill**: MIT License
- **iOS Simulator Skill**: Apache 2.0 License

## 🔗 Resources

- **Playwright Skill Source**: https://github.com/lackeyjb/playwright-skill
- **iOS Simulator Skill Source**: https://github.com/conorluddy/ios-simulator-skill
- **Claude Code Documentation**: https://docs.claude.com/en/docs/claude-code/skills

## 🙏 Acknowledgments

Built for the Claude Code ecosystem. Special thanks to:
- [lackeyjb](https://github.com/lackeyjb) for the Playwright skill
- [conorluddy](https://github.com/conorluddy) for the iOS Simulator skill

---

**Made with ❤️ for the Claude Code community**
