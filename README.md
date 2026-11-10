# agent-skills

My global instructions and skills for coding agents (Claude Code, Codex, T3
Code).

- `AGENTS.md` holds my global instructions. Claude Code reads it as
  `~/.claude/CLAUDE.md`, and Codex reads it as `~/.codex/AGENTS.md`.
- `skills/` holds one folder per skill, each with a `SKILL.md`.
- `bin/link-claude-skills.sh` links each skill into `~/.claude/skills`.

| Skill | Use |
| --- | --- |
| `babysit-pr` | Monitor a PR through review and CI. Includes the `pr-wait` watcher script. |
| `council` | Get reviews from strong models of several providers. |
| `file-pr` | File a concise pull request. |
| `full-flow` | Run `full-stop`, then `council`, then merge. |
| `full-pr` | Take work to a merged PR without supervision. |
| `full-stop` | Like `full-pr`, but stop with the PR ready to merge. |
| `full-send` | Commit to main and push. |
| `leaving-pr-comments` | Format comments posted on my behalf. |
| `modernize` | Rebase an old PR and check if it still makes sense. |
| `sol-loop` | Review changes with GPT Sol in a loop. |
| `takeover` | Take over an existing PR, branch, or agent thread. |

## Install on a new machine

Clone into `~/.agents`. Codex reads skills from `~/.agents/skills`. Then link
the instructions and the skills for Claude Code and Codex.

```sh
git clone https://github.com/Anton-M-R/agent-skills.git ~/.agents
mkdir -p ~/.claude ~/.codex
ln -s ~/.agents/AGENTS.md ~/.claude/CLAUDE.md
ln -s ~/.agents/AGENTS.md ~/.codex/AGENTS.md
~/.agents/bin/link-claude-skills.sh
```

If `ln` fails, the machine already has its own instructions file. Delete or
move that file, then run `ln` again.

## Update

```sh
git -C ~/.agents pull && ~/.agents/bin/link-claude-skills.sh
```

## License

MIT
