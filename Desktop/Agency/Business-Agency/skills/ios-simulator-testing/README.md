# iOS Simulator Testing Skill

Efficient iOS app building, navigation, and testing using accessibility-first automation. Optimized for AI agents with 97% token reduction.

## Features

- 🔧 **Build & Test**: Build Xcode projects and run test suites
- 🧭 **Navigation**: Accessibility-first UI navigation (semantic vs pixel-based)
- 📊 **Token Efficient**: 97% reduction in output tokens vs raw tools
- 📱 **App Control**: Launch, terminate, install, deep linking
- ♿ **Accessibility**: WCAG compliance checking and auditing
- 📸 **Visual Testing**: Screenshot comparison and regression detection
- 🐛 **Debugging**: Complete state snapshots with logs and UI trees
- 📝 **Documentation**: Auto-generated test reports with screenshots
- ⚡ **Fast**: Structured data extraction, no image processing

## Installation

Download `ios-simulator-skill.zip` and extract to your Claude Code skills directory:

### Personal Installation (All Projects)
```bash
mkdir -p ~/.claude/skills
unzip ios-simulator-skill.zip -d ~/.claude/skills/ios-simulator-skill/
```

### Project Installation (Specific Project)
```bash
mkdir -p .claude/skills
unzip ios-simulator-skill.zip -d .claude/skills/ios-simulator-skill/
```

## Prerequisites

- **macOS 12+** (iOS Simulator requires macOS)
- **Xcode Command Line Tools**: `xcode-select --install`
- **Python 3.x** (pre-installed on macOS)
- **IDB** (optional but recommended): `brew install idb-companion`
- **Pillow** (optional, for visual diffs): `pip3 install pillow`

## Setup

Verify your environment:

```bash
cd ~/.claude/skills/ios-simulator-skill
bash skill/scripts/sim_health_check.sh
```

## Usage

### Automatic (Recommended)

Claude Code automatically uses this skill when you ask:

```
"Navigate to the login screen in my iOS simulator"
"Fill in the username field with test@example.com"
"What buttons are available on this screen?"
"Check this screen for accessibility issues"
"Run my iOS build and show me any errors"
"Take a screenshot of the current screen"
"Compare this screen to the baseline"
```

### Manual Script Usage

```bash
# Map current screen (5 line output)
python skill/scripts/screen_mapper.py

# Launch an app
python skill/scripts/app_launcher.py --launch com.example.app

# Find and tap a button
python skill/scripts/navigator.py --find-text "Login" --tap

# Enter text in a field
python skill/scripts/navigator.py --find-type TextField --enter-text "user@example.com"

# Check accessibility compliance
python skill/scripts/accessibility_audit.py

# Take screenshot and compare
python skill/scripts/visual_diff.py baseline.png current.png

# Capture complete debugging state
python skill/scripts/app_state_capture.py --app-bundle-id com.example.app
```

## Available Scripts (12 Total)

### Build & Development
- `build_and_test.py` - Build Xcode projects and run tests
- `log_monitor.py` - Real-time log streaming with filtering

### Navigation & Interaction
- `screen_mapper.py` - Analyze current screen (5 line output)
- `navigator.py` - Find and interact with elements
- `gesture.py` - Swipes, scrolls, pinches, gestures
- `keyboard.py` - Text input and hardware buttons
- `app_launcher.py` - App lifecycle management

### Testing & Quality
- `accessibility_audit.py` - WCAG compliance checking
- `visual_diff.py` - Screenshot comparison
- `test_recorder.py` - Automated test documentation
- `app_state_capture.py` - Complete debugging snapshots
- `sim_health_check.sh` - Environment verification

## Example: Complete Login Flow

```bash
# Launch app
python skill/scripts/app_launcher.py --launch com.example.app

# Map screen to see available elements
python skill/scripts/screen_mapper.py
# Output: Screen: LoginViewController (45 elements, 7 interactive)
#         Buttons: "Login", "Cancel", "Forgot Password"
#         TextFields: 2 (0 filled)

# Enter credentials
python skill/scripts/navigator.py --find-type TextField --index 0 --enter-text "user@test.com"
python skill/scripts/navigator.py --find-type SecureTextField --enter-text "password123"

# Tap login
python skill/scripts/navigator.py --find-text "Login" --tap

# Verify accessibility
python skill/scripts/accessibility_audit.py
```

## Why Accessibility-First?

Instead of pixel-based navigation (fragile):
```bash
❌ idb ui tap 320 400  # What's at 320,400? Breaks on UI changes
```

Use semantic navigation (robust):
```bash
✅ python scripts/navigator.py --find-text "Login" --tap
```

**Benefits:**
- More reliable (semantic vs pixels)
- More maintainable (no hardcoded coordinates)
- More token-efficient (structured data vs screenshots)
- Faster (no image processing)

## Token Efficiency Comparison

| Task | Raw Tools | This Skill | Savings |
|------|-----------|-----------|---------|
| Screen analysis | 200+ lines | 5 lines | 97.5% |
| Find & tap button | 100+ lines | 1 line | 99% |
| Enter text | 50+ lines | 1 line | 98% |
| Complete login flow | 400+ lines | 15 lines | 96% |

## Use Cases

- 🤖 AI agent automation with Claude Code
- 🧪 Manual testing and verification
- 📱 App exploration and structure analysis
- 🔍 UI hierarchy inspection
- 🐛 Bug reporting with state capture
- ♿ Accessibility compliance testing
- 📊 Visual regression testing
- 📝 Automated test documentation

## Documentation

Full documentation available in `SKILL.md` after extraction.

## Source

Original repository: https://github.com/conorluddy/ios-simulator-skill

## License

Apache 2.0
