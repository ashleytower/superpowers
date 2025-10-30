# Claude Code Skills - Complete Collection

Comprehensive collection of 45+ Claude Code skills organized by category, with ZIP files ready for Claude Desktop installation.

## Repository Structure

```
superpowers/
├── skills/              # Core 32 development skills (for Claude Code)
├── all-skills/          # Complete organized collection
│   ├── development-skills/     (32 skills)
│   ├── document-skills/        (4 skills)
│   ├── creative-skills/        (5 skills)
│   ├── business-skills/        (3 skills)
│   └── productivity-skills/    (2 skills)
└── skill-zips/
    ├── individual/      # 45 individual ZIP files (one per skill)
    └── bundles/         # 5 category bundles for easy installation
```

## Installation

### For Claude Code
```bash
# Install individual skill
cd ~/.claude/skills
cp -r /path/to/superpowers/all-skills/[category]/[skill-name] .

# Or symlink the entire collection
ln -s /path/to/superpowers/all-skills/* ~/.claude/skills/
```

### For Claude Desktop
1. Download desired ZIP from `skill-zips/individual/` or `skill-zips/bundles/`
2. Extract to Claude Desktop skills directory
3. Restart Claude Desktop

## Skills by Category

### Development Skills (32)

**Core Development**
- `auto-sync-skills` - Automatically sync skills across installations
- `brainstorming` - Structured brainstorming workflows
- `brand-application` - Apply brand guidelines to code and documentation
- `commands` - Custom slash command definitions
- `condition-based-waiting` - Async condition waiting patterns

**Testing & Quality**
- `test-driven-development` - TDD workflows and patterns
- `testing-anti-patterns` - Identify and fix testing anti-patterns
- `testing-skills-with-subagents` - Test skills using subagents
- `systematic-debugging` - Structured debugging methodologies
- `verification-before-completion` - Pre-completion verification checklists

**Code Review & Collaboration**
- `requesting-code-review` - Request code reviews with context
- `receiving-code-review` - Process and apply code review feedback
- `sharing-skills` - Share skills across team
- `finishing-a-development-branch` - Complete and merge branches properly

**Architecture & Planning**
- `executing-plans` - Execute development plans systematically
- `writing-plans` - Create structured development plans
- `subagent-driven-development` - Multi-agent development workflows
- `dispatching-parallel-agents` - Coordinate multiple agents
- `root-cause-tracing` - Trace issues to root causes
- `defense-in-depth` - Security-first development practices

**Specialized**
- `ios-simulator-testing` - iOS simulator automation and testing
- `playwright-browser-automation` - Web automation with Playwright
- `content-research-writer` - Research and content generation
- `email-intelligence` - Email analysis and automation
- `file-organizer` - Intelligent file organization
- `invoice-organizer` - Invoice processing and organization
- `notion-template-processor` - Notion template automation
- `pdf-processor` - PDF manipulation and extraction
- `youtube-transcript-downloader` - Download and process YouTube transcripts
- `using-git-worktrees` - Git worktree workflows
- `using-superpowers` - Meta-skill for using this repository
- `writing-skills` - Create new Claude Code skills

### Document Skills (4) - Official Anthropic

**Microsoft Office Automation**
- `docx` - Create, edit, and analyze Word documents with OOXML schemas
- `xlsx` - Excel spreadsheet manipulation and formula recalculation
- `pptx` - PowerPoint presentation generation and modification
- `pdf` - PDF form filling, extraction, and image conversion

All document skills include:
- Full OOXML/OPC schema validation
- Python automation scripts
- Comprehensive reference documentation
- Official Anthropic LICENSE

### Creative Skills (5)

**Visual Design**
- `canvas-design` - Create custom canvas designs with 40+ fonts
- `algorithmic-art` - Generate algorithmic art with JavaScript
- `theme-factory` - Generate complete design themes (10 presets)
- `slack-gif-creator` - Create animated GIFs for Slack with 13 animation styles

**Development Tools**
- `artifacts-builder` - Build and package React artifacts with shadcn/ui

All creative skills include animation templates, color palettes, and easing functions.

### Business Skills (3)

**Communications & Brand**
- `brand-guidelines` - Maintain and apply brand consistency
- `internal-comms` - Internal communication templates and workflows
- `webapp-testing` - Web application testing with Playwright integration

### Productivity Skills (2)

**Development Tools**
- `mcp-builder` - Build and evaluate MCP (Model Context Protocol) servers
- `skill-creator` - Create new Claude Code skills with validation

Includes MCP best practices, Python/Node server templates, and evaluation frameworks.

## Download Options

### Individual ZIPs (45 files)
Located in `skill-zips/individual/` - Download only the skills you need.

### Category Bundles (5 files)
Located in `skill-zips/bundles/`:
- `development-skills.zip` (32 skills) - Complete development toolkit
- `document-skills.zip` (4 skills) - Office document automation
- `creative-skills.zip` (5 skills) - Design and creative tools
- `business-skills.zip` (3 skills) - Business workflows
- `productivity-skills.zip` (2 skills) - Productivity enhancers

## Skill Format

All skills follow the Claude Code SKILL.md format:
```markdown
---
name: skill-name
description: Brief description
version: 1.0.0
author: Author Name
tags: [tag1, tag2]
---

# Skill Name

## Description
Detailed description...

## Usage
How to use the skill...
```

## Contributing

Skills in this repository come from multiple sources:
- **obra/superpowers**: Core development skills
- **Anthropic Official**: Document processing skills (docx, pdf, pptx, xlsx)
- **Custom**: Creative, business, and productivity skills

See individual skill LICENSE.txt files for licensing information.

## Repository Information

- **Main Repository**: https://github.com/ashleytower/superpowers
- **Upstream**: https://github.com/obra/superpowers
- **Version**: 4.0.0 (Comprehensive Collection)
- **Last Updated**: 2025-10-30

## Quick Start

**For Claude Code users:**
```bash
# Clone the repository
git clone https://github.com/ashleytower/superpowers.git
cd superpowers

# Symlink all skills
ln -s $(pwd)/all-skills/* ~/.claude/skills/
```

**For Claude Desktop users:**
1. Browse to `skill-zips/bundles/`
2. Download desired category bundle
3. Extract to Claude Desktop skills directory

##Thanks

Special thanks to:
- **@obra** for the foundational superpowers repository
- **Anthropic** for official document processing skills
- The Claude Code community for contributions

## License

See individual skill directories for specific licensing. Most skills are MIT licensed.
