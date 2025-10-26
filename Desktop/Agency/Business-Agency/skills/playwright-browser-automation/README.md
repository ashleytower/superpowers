# Playwright Browser Automation Skill

Complete browser automation with Playwright for testing websites, automating interactions, and validating web functionality.

## Features

- ✅ Auto-detects running dev servers
- ✅ Writes clean test scripts to /tmp
- ✅ Visible browser testing by default
- ✅ Responsive design testing (Desktop, Tablet, Mobile)
- ✅ Login flow automation
- ✅ Form filling and validation
- ✅ Screenshot capture (full page)
- ✅ Link checking and validation
- ✅ Custom Playwright code execution
- ✅ Error handling with retry logic

## Installation

Download `playwright-skill.zip` and extract to your Claude Code skills directory:

### Personal Installation (All Projects)
```bash
mkdir -p ~/.claude/skills
unzip playwright-skill.zip -d ~/.claude/skills/
```

### Project Installation (Specific Project)
```bash
mkdir -p .claude/skills
unzip playwright-skill.zip -d .claude/skills/
```

## Setup

After installation, run the setup script once:

```bash
cd ~/.claude/skills/playwright-skill
npm run setup
```

This installs Playwright and Chromium browser.

## Usage

### Automatic (Recommended)

Claude Code automatically uses this skill when you ask:

```
"Test if the marketing page looks good on mobile and desktop"
"Check if the login form redirects correctly"
"Take a screenshot of the homepage"
"Test all the links on this page"
"Fill out the contact form with test data"
```

### Manual Execution

```bash
# Detect running dev servers
cd ~/.claude/skills/playwright-skill
node -e "require('./lib/helpers').detectDevServers().then(s => console.log(JSON.stringify(s)))"

# Run a custom test script
node run.js /tmp/my-test.js
```

## Example Test Script

```javascript
// /tmp/playwright-test-login.js
const { chromium } = require('playwright');

const TARGET_URL = 'http://localhost:3000';

(async () => {
  const browser = await chromium.launch({ headless: false });
  const page = await browser.newPage();

  await page.goto(`${TARGET_URL}/login`);
  await page.fill('input[name="email"]', 'test@example.com');
  await page.fill('input[name="password"]', 'password123');
  await page.click('button[type="submit"]');

  await page.waitForURL('**/dashboard');
  console.log('✅ Login successful');

  await browser.close();
})();
```

## Common Use Cases

- 🧪 E2E testing of web applications
- 📱 Responsive design validation
- 🔐 Login and authentication flows
- 📋 Form submission testing
- 🔗 Broken link detection
- 📸 Visual regression testing
- ♿ Accessibility testing

## Documentation

Full documentation available in `SKILL.md` after extraction.

## Source

Original repository: https://github.com/lackeyjb/playwright-skill

## License

MIT
