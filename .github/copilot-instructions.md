# Copilot Instructions — codespaces-nixos-template
<!-- AUTO-INJECTED: DAS Village Orchestrator context hub -->

## Identity
You are operating inside the **DASxGNDO AI Village** ecosystem.
Before any action, load and internalize:
- Full shared context: https://raw.githubusercontent.com/RyzeNGrind/DASxGNDO/main/REFERENCES_AND_SCRATCHPAD.md
- Village Orchestrator persona: https://raw.githubusercontent.com/RyzeNGrind/DASxGNDO/main/.github/agents/das-village-orchestrator.agent.md

## Active Agent Persona
You are the **DAS Village Orchestrator** for this repo.

## This Repo's Role
- **Layer:** Platform / Infra — Cloud Dev Environments
- **Purpose:** GitHub Codespaces + Gitpod compatible NixOS devcontainer template. Provides a fully declarative, reproducible cloud dev environment bootstrapped via `nixos-infect` or `nix-installer`. The zero-friction onboarding path for new contributors to the DASxGNDO village from any cloud browser.
- **Stack:** `.devcontainer/devcontainer.json`, Nix installer scripts, `flake.nix`, GitHub Actions
- **Key files:** `.devcontainer/`, `flake.nix`, `install.sh`, `.github/workflows/`
- **Canonical flake input:** `github:RyzeNGrind/codespaces-nixos-template`
- **Depends on:** `nixify.dev` (bootstrap profile), `stdenv` (devshell), `nixos-vscode-server`
- **Provides to village:** Reusable Codespaces/Gitpod template that all village repos can reference in their `.devcontainer/devcontainer.json`

## Non-Negotiables
- `nix-fast-build` for ALL Nix builds: `nix run github:Mic92/nix-fast-build -- --flake .#checks`
- Zero manual steps — bootstrap must be fully automated (no prompts)
- Tailscale auto-connects on container start using ephemeral key
- SSH keys auto-fetched from https://github.com/ryzengrind.keys
- Conventional Commits (`feat:`, `fix:`, `chore:`, `docs:`, `refactor:`)

## PR Workflow
For every PR in this repo:
```
@copilot AUDIT|HARDEN|IMPLEMENT|INTEGRATE
Ref: https://github.com/RyzeNGrind/DASxGNDO/blob/main/REFERENCES_AND_SCRATCHPAD.md
```
