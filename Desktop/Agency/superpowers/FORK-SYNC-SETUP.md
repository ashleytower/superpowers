# Auto-Sync Setup for Forked Repositories

This guide shows you how to set up automatic synchronization for ANY forked repository, ensuring your forks stay up-to-date with their upstream sources.

## Quick Setup

### For New Forks

When you fork a repository on GitHub:

1. **Clone your fork locally**:
   ```bash
   git clone https://github.com/ashleytower/FORKED-REPO.git
   cd FORKED-REPO
   ```

2. **Copy the auto-sync workflow**:
   ```bash
   mkdir -p .github/workflows
   cp /path/to/superpowers/.github/workflows/fork-sync-template.yml .github/workflows/sync-upstream.yml
   ```

3. **Update the upstream repository**:
   Edit `.github/workflows/sync-upstream.yml` and replace:
   ```yaml
   UPSTREAM_REPO: 'REPLACE_WITH_UPSTREAM_OWNER/REPLACE_WITH_UPSTREAM_REPO'
   ```

   With the actual upstream repo, for example:
   ```yaml
   UPSTREAM_REPO: 'alirezarezvani/claude-skills'
   ```

4. **Commit and push**:
   ```bash
   git add .github/workflows/sync-upstream.yml
   git commit -m "Add auto-sync workflow with upstream"
   git push origin main
   ```

5. **Done!** Your fork will now:
   - Auto-sync daily at 2 AM UTC
   - Can be manually triggered via GitHub Actions UI
   - Creates PR if conflicts are detected

## How It Works

The workflow:
1. **Checks for changes** from upstream daily
2. **Auto-merges** if there are no conflicts
3. **Creates a Pull Request** if conflicts are detected (for manual resolution)
4. **Sends notifications** on GitHub Actions

## Manual Sync Trigger

To manually sync your fork:

1. Go to **GitHub** → **Your Fork** → **Actions** tab
2. Select **"Sync Fork with Upstream"** workflow
3. Click **"Run workflow"** button
4. Confirm and run

## Already Set Up Repositories

These repositories are already configured with auto-sync:

### ✅ claude-skills
- **Fork**: https://github.com/ashleytower/claude-skills
- **Upstream**: https://github.com/alirezarezvani/claude-skills
- **Status**: Auto-syncing daily
- **Purpose**: 36 professional role-based expert advisors

### ✅ superpowers
- **Fork**: https://github.com/ashleytower/superpowers
- **Upstream**: https://github.com/obra/superpowers
- **Status**: Manual sync (you maintain this with custom additions)
- **Purpose**: 45+ task automation and workflow skills

## Troubleshooting

### Workflow Not Running?

Check:
1. GitHub Actions are enabled in your repository settings
2. The workflow file is in `.github/workflows/` directory
3. The UPSTREAM_REPO variable is correctly set

### Merge Conflicts?

When the auto-merge fails:
1. A PR will be automatically created
2. Review the PR in your fork
3. Manually resolve conflicts in the PR
4. Merge the PR when ready

### Want to Pause Auto-Sync?

1. Go to **Actions** → **Sync Fork with Upstream**
2. Click the **"..."** menu → **Disable workflow**

To re-enable, click **Enable workflow**

## Best Practices

1. **Review changes**: Check the auto-sync commits to see what changed upstream
2. **Keep customizations separate**: Use separate branches for your custom changes to avoid conflicts
3. **Monitor notifications**: Watch for PR notifications when conflicts occur
4. **Sync before major changes**: Manually trigger sync before making significant changes to your fork

## Advanced: Custom Sync Schedule

To change the sync frequency, edit the cron schedule in the workflow:

```yaml
schedule:
  # Run daily at 2 AM UTC
  - cron: '0 2 * * *'
```

Common schedules:
- Every 6 hours: `'0 */6 * * *'`
- Twice daily: `'0 2,14 * * *'`
- Weekly: `'0 2 * * 0'`
- Monthly: `'0 2 1 * *'`

## Example: Setting Up Auto-Sync for New Fork

```bash
# Fork a repo on GitHub, then:
git clone https://github.com/ashleytower/new-forked-repo.git
cd new-forked-repo

# Copy the template
mkdir -p .github/workflows
curl -o .github/workflows/sync-upstream.yml \
  https://raw.githubusercontent.com/ashleytower/superpowers/main/.github/workflows/fork-sync-template.yml

# Edit the file and update UPSTREAM_REPO variable
nano .github/workflows/sync-upstream.yml

# Commit and push
git add .github/workflows/sync-upstream.yml
git commit -m "Add auto-sync workflow"
git push origin main

# Verify in GitHub Actions tab
```

---

**Last Updated**: 2025-10-30
**Maintained**: Auto-updated as part of superpowers repository
