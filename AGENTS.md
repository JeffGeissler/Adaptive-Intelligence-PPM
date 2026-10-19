# Contributor instructions (humans and AI assistants)

Scope: this repository, which contains the AIPM framework, its AI skills, the GitHub Pages site, and the fictional demo.

- Read [README.md](README.md) and [DECISIONS.md](DECISIONS.md) before making changes.
- The repository is public. Do not add employer-proprietary or confidential material: internal tools, data, prompts, architectures, nonpublic results, or recognizable anonymized case studies. Examples must be original and fictional, with synthetic numbers labeled as such.
- Skills stay advisory. Adding execution, write-back, messaging, or funding capabilities requires a recorded decision in DECISIONS.md.
- Each `skills/*/SKILL.md` embeds the shared "AIPM operating rules" block. Change it in every skill together, and keep `docs/skills.md` consistent.
- `skills/` is canonical. `.claude/skills/` holds only relative symlinks to it.
- Distinguish author statements, proposed extensions, assumptions, and measured results. Make no effectiveness claims without field evidence.
- Papers republished from Substack keep their `canonical_url` and a link to the original.
- Never commit secrets, local configuration, databases, logs, or real personal or company data. Check staged contents before committing; `.gitignore` is not a privacy guarantee.
- Site: GitHub Pages builds from `docs/` with the Just the Docs remote theme. Add verified local build commands here if local previewing is set up.
