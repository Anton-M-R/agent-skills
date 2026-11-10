# agent-skills

My skills for coding agents (Claude Code, Codex, T3 Code). Each folder is one
skill with a `SKILL.md`.

| Skill | Use |
| --- | --- |
| `babysit-pr` | Monitor a PR through review and CI. Includes the `pr-wait` watcher script. |
| `council` | Get reviews from strong models of several providers. |
| `file-pr` | File a concise pull request. |
| `full-pr` | Take work to a merged PR without supervision. |
| `full-stop` | Like `full-pr`, but stop with the PR ready to merge. |
| `full-send` | Commit to main and push. |
| `leaving-pr-comments` | Format comments posted on my behalf. |
| `modernize` | Rebase an old PR and check if it still makes sense. |
| `sol-loop` | Review changes with GPT Sol in a loop. |
| `takeover` | Take over an existing PR, branch, or agent thread. |

## Install on a new machine

Clone into `~/.agents/skills`, where Codex reads skills. Then link each skill
into `~/.claude/skills` for Claude Code.

```sh
git clone https://github.com/Anton-M-R/agent-skills.git ~/.agents/skills
mkdir -p ~/.claude/skills
for d in ~/.agents/skills/*/; do ln -sfn "${d%/}" ~/.claude/skills/; done
```

## Update

```sh
git -C ~/.agents/skills pull
```

Run the link loop again after a pull that adds a new skill.

## License

MIT
