# How Claude Code Skills Are Invoked

Skills in Claude Code can be invoked in two ways: **Automatically** (when Claude detects they're needed) or **Manually** (when you explicitly call them).

## 🤖 Automatic Invocation (Smart Mode)

Claude Code automatically analyzes your request and invokes relevant skills when it detects they would be helpful.

### How It Works

1. **You make a request** (without using `/`)
2. **Claude analyzes** the request against all skill descriptions
3. **Relevant skills are automatically loaded** if they match
4. **Claude uses the skill** to complete your task

### Examples of Automatic Invocation

**Example 1: Testing**
```
You: "I need to write tests for my authentication module"

Claude: [Automatically loads /test-driven-development skill]
        "I'll help you write tests using TDD principles..."
```

**Example 2: Architecture Review**
```
You: "Can you review my microservices architecture?"

Claude: [Automatically loads /senior-architect skill]
        "I'll review your architecture from a senior architect perspective..."
```

**Example 3: Document Creation**
```
You: "Create a Word document for the project proposal"

Claude: [Automatically loads /docx skill]
        "I'll create a properly formatted DOCX document..."
```

**Example 4: Web Automation**
```
You: "Test the login flow on my website"

Claude: [Automatically loads /playwright-browser-automation skill]
        "I'll use Playwright to test the login flow..."
```

### What Triggers Automatic Invocation?

Skills are automatically invoked when:

1. **Keywords match**: Your request contains keywords from the skill's description
2. **Task type matches**: The task aligns with the skill's purpose
3. **Context is relevant**: The conversation context suggests the skill would help

### Optimizing for Automatic Invocation

Your skills are already optimized because they have:
- ✅ Clear, descriptive `name` fields
- ✅ Detailed `description` fields in SKILL.md frontmatter
- ✅ Relevant `tags` that help Claude identify when to use them

## 👤 Manual Invocation (Explicit Mode)

You can also explicitly call skills using the `/` slash command.

### When to Use Manual Invocation

1. **You know exactly which skill you want**
2. **Multiple skills could apply** and you want a specific one
3. **You want to ensure a specific skill is used**
4. **The skill might not be auto-detected** for your use case

### Syntax

```
/skill-name [your request]
```

### Examples of Manual Invocation

**Explicit Skill Call:**
```
/senior-architect "Review my database schema design"
```

**Force a Specific Advisor:**
```
/cto-advisor "Should we migrate to microservices?"
```

**Use Multiple Skills:**
```
First use /brainstorming to generate ideas, then /writing-plans to create a plan
```

**Ensure Specific Tool:**
```
/playwright-browser-automation "Test the checkout process at https://mystore.com"
```

## 🎯 Best Practices

### Let Claude Choose (Recommended)

For most cases, **don't use slash commands**. Just describe what you want:

✅ **Good** (Auto-invocation):
```
"Help me write unit tests for my user service"
"Review my React component architecture"
"Create a PowerPoint presentation for quarterly results"
```

❌ **Less Optimal** (Unnecessary manual call):
```
"/test-driven-development Help me write unit tests for my user service"
"/senior-architect Review my React component architecture"
"/pptx Create a PowerPoint presentation for quarterly results"
```

### Use Slash Commands When...

✅ **You want a specific expert**:
```
"/senior-security Review my authentication code"
(Instead of just "code-reviewer" which might auto-load)
```

✅ **You want to combine multiple skills explicitly**:
```
"Use /brainstorming to generate ideas, then /product-strategist to prioritize"
```

✅ **The skill isn't auto-loading** (rare):
```
"/playwright-browser-automation Test login at https://app.example.com"
```

## 🔍 How to Know Which Skills Are Being Used

Claude will tell you when it uses a skill automatically:

```
You: "I need to write tests for my API"

Claude: "I'll help you with test-driven development for your API...
        [Using test-driven-development skill]

        Let's start by..."
```

## 💡 Pro Tips

### 1. Natural Language First
Always try natural language first. Claude is smart about skill selection:

```
✅ "Help me create a design system for my app"
   → Auto-loads: /ui-design-system

✅ "Review my backend API architecture"
   → Auto-loads: /senior-backend or /senior-architect

✅ "Generate a GIF animation for Slack"
   → Auto-loads: /slack-gif-creator
```

### 2. Be Specific About Roles
When you want a specific expert perspective:

```
✅ "I need a senior architect's perspective on this"
   → Auto-loads: /senior-architect

✅ "Get the CTO's take on this technology decision"
   → Auto-loads: /cto-advisor

✅ "What would a product strategist recommend?"
   → Auto-loads: /product-strategist
```

### 3. Mention the Task Type
Reference the type of work to trigger relevant skills:

```
✅ "Let's use TDD for this feature"
   → Auto-loads: /test-driven-development

✅ "I need to automate testing this web app"
   → Auto-loads: /playwright-browser-automation

✅ "Create a Word document with proper formatting"
   → Auto-loads: /docx
```

### 4. Override with Slash Commands
If auto-selection picks the wrong skill, explicitly call the one you want:

```
"Actually, use /senior-frontend instead - I need frontend-specific advice"
```

## 🎭 Skill Types and Auto-Invocation

### Always Auto-Invoke (High Confidence)
These skills have very specific triggers:

- **Document skills** (docx, pdf, pptx, xlsx) - When you mention document types
- **Browser automation** (playwright-browser-automation) - When you mention testing websites
- **TDD** (test-driven-development) - When you mention writing tests
- **Git workflows** (using-git-worktrees, finishing-a-development-branch) - When you mention git tasks

### Context-Dependent (Medium Confidence)
These may need more context or explicit calling:

- **Senior advisors** - Benefit from role mention ("senior architect", "CTO perspective")
- **Creative skills** - Better with explicit mention ("canvas design", "create a GIF")
- **Specialized tools** - Work well when task type is clear

### Manual Preferred (Low Auto-Detection)
These are better called explicitly:

- **Meta skills** (writing-skills, skill-creator, using-superpowers)
- **Niche advisors** (regulatory-affairs-head, fda-consultant-specialist)
- **Process skills** (brainstorming, executing-plans) when you want structured workflows

## 🔄 Workflow Examples

### Example 1: Let Claude Choose Everything
```
You: "I'm building a user authentication system. Help me architect it,
     write the code, and create tests."

Claude: [Auto-loads: /senior-architect for design]
        [Auto-loads: /senior-backend for implementation]
        [Auto-loads: /test-driven-development for tests]
        [Auto-loads: /senior-security for security review]
```

### Example 2: Guide the Process with Slash Commands
```
You: "Use /senior-architect to design an auth system,
     then /senior-security to review it,
     then /test-driven-development to help write tests"

Claude: [Follows your explicit workflow]
```

### Example 3: Mix of Both
```
You: "I need to create a design system"

Claude: [Auto-loads: /ui-design-system]

You: "Now get /senior-frontend to review it"

Claude: [Explicitly loads: /senior-frontend]
```

## 📊 Summary Table

| Invocation Type | When to Use | Example |
|----------------|-------------|---------|
| **Auto (Recommended)** | Most of the time | "Help me write tests" |
| **Manual (Slash)** | Specific expert needed | "/senior-architect review this" |
| **Mixed** | Complex workflows | Auto for most, slash for specific steps |

## 🎓 Learning Curve

**Week 1**: Use slash commands to learn what skills do
**Week 2**: Start using natural language, see what auto-loads
**Week 3+**: Rarely need slash commands - Claude knows what you need

## ❓ FAQ

**Q: Will Claude always use the right skill automatically?**
A: 95% of the time, yes. When it doesn't, just specify with `/skill-name`

**Q: Can I disable automatic invocation?**
A: Yes, always use slash commands explicitly if you prefer control

**Q: What if multiple skills could apply?**
A: Claude will choose the most relevant one, or you can specify

**Q: How do I know which skills are available?**
A: Type `/` to see all 82 skills, or check CLAUDE-CODE-SKILLS-GUIDE.md

**Q: Can skills call other skills?**
A: Yes! Skills can invoke other skills as needed for complex tasks

## 🚀 Bottom Line

**Default Mode: Let Claude decide**
- Just describe what you want naturally
- Claude will auto-load the right skills
- Faster and more natural workflow

**Override with `/` when needed**
- For specific experts or tools
- To ensure a particular skill is used
- When auto-detection isn't quite right

---

**Your 82 skills are ready to help - automatically or on-demand! 🎉**
