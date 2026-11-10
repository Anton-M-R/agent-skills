#!/bin/sh
# Link every skill in ~/.agents/skills into ~/.claude/skills,
# and remove links whose skill was deleted. Leaves real folders alone.
src="$HOME/.agents/skills"
dst="$HOME/.claude/skills"
mkdir -p "$dst"
for dir in "$src"/*/; do
  [ -f "$dir/SKILL.md" ] || continue
  name=$(basename "$dir")
  [ -e "$dst/$name" ] || [ -L "$dst/$name" ] || ln -s "${dir%/}" "$dst/$name"
done
for link in "$dst"/*; do
  [ -L "$link" ] || continue
  case "$(readlink "$link")" in "$src"/*) [ -e "$link" ] || rm "$link" ;; esac
done
exit 0
