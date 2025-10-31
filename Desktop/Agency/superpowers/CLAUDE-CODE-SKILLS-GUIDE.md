# Claude Code Skills - Complete Usage Guide

Your comprehensive guide to using all 82 installed Claude Code skills.

## ✅ Installation Status

**Total Skills Installed**: 82

### Superpowers Collection (46 skills)
- 32 Development Skills
- 4 Document Processing Skills
- 5 Creative Skills
- 3 Business Skills
- 2 Productivity Skills

### Claude-Skills Advisors (36 experts)
- 16 Engineering Team Members
- 2 C-Level Advisors
- 5 Product Team Members
- 3 Marketing Experts
- 13 Regulatory/Quality Specialists

## 🎯 How to Use Skills

### In Claude Code

**Method 1: Slash Commands**
1. Type `/` in your prompt
2. Start typing the skill name
3. Use arrow keys to select
4. Press Enter or Tab

**Method 2: Direct Invocation**
Just mention the skill by name in your conversation:
```
"Use the test-driven-development skill to help me write tests"
"Can you run playwright-browser-automation on this website?"
"I need the senior-architect to review my design"
```

## 📚 Skills Reference

### Development Skills (32)

#### Testing & Quality
- `/test-driven-development` - TDD workflows and patterns
- `/testing-anti-patterns` - Identify and fix testing issues
- `/testing-skills-with-subagents` - Test skills using subagents
- `/systematic-debugging` - Structured debugging methodology
- `/verification-before-completion` - Pre-completion checks

#### Code Review
- `/requesting-code-review` - Request code reviews with context
- `/receiving-code-review` - Process review feedback
- `/code-reviewer` - General code review assistance

#### Architecture & Planning
- `/executing-plans` - Execute development plans
- `/writing-plans` - Create structured plans
- `/subagent-driven-development` - Multi-agent workflows
- `/dispatching-parallel-agents` - Coordinate agents
- `/root-cause-tracing` - Trace issues to root cause
- `/defense-in-depth` - Security-first practices

#### Automation
- `/playwright-browser-automation` - Web automation
- `/ios-simulator-testing` - iOS testing automation
- `/auto-sync-skills` - Sync skills across installations

#### Workflows
- `/brainstorming` - Structured brainstorming
- `/finishing-a-development-branch` - Complete branches
- `/using-git-worktrees` - Git worktree workflows
- `/condition-based-waiting` - Async condition patterns
- `/commands` - Custom slash commands

#### Specialized
- `/content-research-writer` - Research and content
- `/email-intelligence` - Email analysis
- `/file-organizer` - Intelligent file organization
- `/invoice-organizer` - Invoice processing
- `/notion-template-processor` - Notion automation
- `/pdf-processor` - PDF manipulation
- `/youtube-transcript-downloader` - YouTube transcripts
- `/brand-application` - Apply brand guidelines
- `/sharing-skills` - Share skills across team
- `/using-superpowers` - Meta-skill for this repo
- `/writing-skills` - Create new skills

### Document Skills (4) - Official Anthropic

- `/docx` - Create/edit Word documents with OOXML schemas
- `/xlsx` - Excel manipulation and formulas
- `/pptx` - PowerPoint generation
- `/pdf` - PDF forms, extraction, conversion

All include:
- Full OOXML/OPC validation
- Python automation scripts
- Comprehensive documentation

### Creative Skills (5)

- `/canvas-design` - Custom canvas designs (40+ fonts)
- `/algorithmic-art` - Generate algorithmic art (JavaScript)
- `/theme-factory` - Complete design themes (10 presets)
- `/slack-gif-creator` - Animated GIFs (13 animation styles)
- `/artifacts-builder` - React artifacts with shadcn/ui

### Business Skills (3)

- `/brand-guidelines` - Brand consistency
- `/internal-comms` - Communication templates
- `/webapp-testing` - Web app testing with Playwright

### Productivity Skills (2)

- `/mcp-builder` - Build MCP servers (evaluation framework)
- `/skill-creator` - Create new Claude Code skills

### Engineering Team Advisors (16)

Senior-level expert consultants:
- `/senior-architect` - Architecture reviews and design
- `/senior-backend` - Backend development guidance
- `/senior-frontend` - Frontend best practices
- `/senior-fullstack` - Full-stack development advice
- `/senior-security` - Security reviews and hardening
- `/senior-devops` - DevOps and infrastructure
- `/senior-qa` - Quality assurance strategies
- `/senior-secops` - Security operations
- `/senior-ml-engineer` - Machine learning guidance
- `/senior-data-engineer` - Data pipeline design
- `/senior-data-scientist` - Data science methodology
- `/senior-computer-vision` - Computer vision expertise
- `/senior-prompt-engineer` - Prompt engineering best practices

### C-Level Advisors (2)

Executive-level strategic guidance:
- `/ceo-advisor` - Business strategy and leadership
- `/cto-advisor` - Technology strategy and planning

### Product Team Advisors (5)

Product development experts:
- `/product-strategist` - Product strategy and roadmap
- `/product-manager-toolkit` - PM tools and frameworks
- `/agile-product-owner` - Agile product ownership
- `/ux-researcher-designer` - UX research and design
- `/ui-design-system` - Design system creation

### Marketing Advisors (3)

Marketing strategy experts:
- `/content-creator` - Content strategy and creation
- `/marketing-strategy-pmm` - Product marketing
- `/marketing-demand-acquisition` - Demand generation

### Regulatory & Quality Advisors (13)

Compliance and quality management:
- `/regulatory-affairs-head` - Regulatory strategy
- `/fda-consultant-specialist` - FDA compliance
- `/mdr-745-specialist` - Medical Device Regulation
- `/quality-manager-qms-iso13485` - ISO 13485 QMS
- `/quality-manager-qmr` - Quality management rep
- `/quality-documentation-manager` - Documentation control
- `/qms-audit-expert` - QMS auditing
- `/isms-audit-expert` - ISMS auditing
- `/capa-officer` - CAPA management
- `/risk-management-specialist` - Risk assessment
- `/gdpr-dsgvo-expert` - GDPR compliance
- `/information-security-manager-iso27001` - ISO 27001

## 💡 Usage Examples

### Example 1: Development Workflow
```
"Use /test-driven-development to help me write tests for my user authentication module"

"Run /playwright-browser-automation to test the login flow at https://myapp.com"

"Ask /senior-architect to review my microservices architecture"
```

### Example 2: Document Processing
```
"Use /docx to create a project proposal with proper formatting"

"Convert this data to Excel using /xlsx with formulas for totals"

"Generate a presentation with /pptx for the quarterly review"
```

### Example 3: Getting Expert Advice
```
"I need /senior-security to review this authentication implementation"

"Ask /product-strategist to help prioritize these features"

"Get /cto-advisor input on our technology stack choices"
```

### Example 4: Creative Work
```
"Use /canvas-design to create a social media post with our brand colors"

"Generate an animated GIF with /slack-gif-creator for the announcement"

"Create a cohesive design theme with /theme-factory for the new app"
```

## 🔍 Finding Skills

### List All Skills
In your terminal:
```bash
ls ~/.claude/skills/
```

### Search for Specific Skills
```bash
ls ~/.claude/skills/ | grep -i "test"
ls ~/.claude/skills/ | grep -i "senior"
ls ~/.claude/skills/ | grep -i "document"
```

### View Skill Documentation
```bash
cat ~/.claude/skills/playwright-browser-automation/SKILL.md
cat ~/.claude/skills/senior-architect/SKILL.md
```

## 🔄 Keeping Skills Updated

### Superpowers (Manual Update)
```bash
cd ~/Desktop/Agency/superpowers
git pull origin main
# Skills are symlinked, so they update automatically
```

### Claude-Skills (Auto-Updates Daily)
The claude-skills repository auto-syncs with upstream daily via GitHub Actions.

To manually sync:
```bash
cd ~/Desktop/Agency/claude-skills-review
git fetch upstream
git merge upstream/main
git push origin main
```

## 🛠️ Troubleshooting

### Skills Not Appearing?

1. **Restart Claude Code**
   ```bash
   # Close and reopen Claude Code
   ```

2. **Verify Installation**
   ```bash
   ls -la ~/.claude/skills/ | head -20
   ```

3. **Check Symlinks**
   ```bash
   # Ensure symlinks are not broken
   find ~/.claude/skills -type l ! -exec test -e {} \; -print
   ```

4. **Reinstall**
   ```bash
   cd ~/Desktop/Agency/superpowers
   bash QUICK-INSTALL-CLAUDE-CODE.sh
   ```

### Skill Not Working?

1. **Check SKILL.md exists**
   ```bash
   cat ~/.claude/skills/SKILL-NAME/SKILL.md
   ```

2. **Verify frontmatter**
   Ensure SKILL.md has proper YAML frontmatter:
   ```yaml
   ---
   name: skill-name
   description: Brief description
   version: 1.0.0
   ---
   ```

3. **Check permissions**
   ```bash
   chmod -R 755 ~/.claude/skills/
   ```

## 📖 Learning More

### Documentation
- **Superpowers**: https://github.com/ashleytower/superpowers
- **Claude-Skills**: https://github.com/ashleytower/claude-skills
- **Claude Code Docs**: https://docs.claude.com/claude-code

### Community
- Report issues on GitHub
- Contribute new skills
- Share your use cases

## 🚀 Pro Tips

1. **Combine Skills**: Use multiple skills together
   ```
   "Use /senior-architect to review, then /test-driven-development to write tests"
   ```

2. **Skill Chains**: Create workflows with multiple skills
   ```
   "/brainstorming → /writing-plans → /executing-plans"
   ```

3. **Expert Panels**: Consult multiple advisors
   ```
   "Get input from /senior-architect, /senior-security, and /cto-advisor"
   ```

4. **Automation**: Combine automation skills
   ```
   "/playwright-browser-automation + /test-driven-development"
   ```

5. **Custom Skills**: Create your own with `/skill-creator`

---

**Last Updated**: 2025-10-30
**Total Skills**: 82 (46 Superpowers + 36 Advisors)
**Installation**: All skills symlinked from repositories
