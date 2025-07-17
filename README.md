# NixOS as GitHub Codespace template

[![built with nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org)

Click the button below to open the repo in GitHub codespace.

[![Open the repo in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=fix-nix-env&repo=977112570)

This is a Codespace template, so you can also open it in codespace as template. Try it around as a sandbox.
Then push to your own repository.

# What it can do

The work is somewhat experimental. However, assuming you understand NixOS, it can do a subset of what NixOS can do.

 - testing a NixOS configuration and modules as a devcontainer
 - using Nix Flakes
 - using Home Manager

## As a quick Nix sandbox

Since the container runs on NixOS, you can try Nix packages.
It's also good to try around if you are new to Nix, since you don't have to install it in your machine.
You can try it out and delete the codespace.

## As a quick NixOS sandbox

Although the systemd support inside a docker container (this devcontainer) is somewhat experimental, 
you can experiment with NixOS modules and services, before you put it on an actual system.

You can try spinning up a full stack web services and have it port forwarded using Codespace port forward.

The starting NixOS devcontainer is lightweight and only contains minimal packages.

## As a quick Home Manager environment

When you already have flake-based Home-Manager settings and dotfiles, you can build the flakes from inside
the codespace by providing the remote flake.nix URI.

## As a Nix devcontainer to be used locally

I started the project so I can have a NixOS based devcontainer for my own local computer. You can also use 
it like that with your local vscode.

# Supporting and Contributing

If you like this project, show your love. Even feedbacks are most appreciated.

## Sponsoring

You can sponsor this project to help me experiment with the codespace, since I mostly run out of codespace 
storage quota pretty quickly. The storage was mostly used when you are experimenting with lots of 
packages that fills out Nix store. The final image itself is less than 1GB. By sponsoring, I can avoid
running low of storage quotas.

## Contributing

There are no clear guideline yet. Since this is a template, you can contribute your own recipes, and I can 
publish it as a branch so people can use it quickly. Do you have some cool examples on how to use Nix, Nix flakes, or Home Manager? Feel free to publish it here. You might be helping someone.

Do you have some problem with Nix? You can even use this template so people can see and try out your 
configuration to debug the problem.

## Not able to sponsor or contribute?

No worries, spreading the words or starring the repo might help as well. Thank you!

# References/Remarks

- The main devcontainer image is developed in a separate repo: [github:lucernae/devcontainer-nix](https://github.com/lucernae/devcontainer-nix). Go there if you want discuss how to add new features, report bugs, regarding the main image.
- Thanks to [Arion](https://github.com/hercules-ci/arion). I built the image in Nix using this tools.
- Thanks to Nix Community who helps and provides docs/articles for introverts like me.

![GitHub commit activity](https://img.shields.io/github/commit-activity/t/ryzengrind/codespaces-nixos-template)

Programmed with: [![Nix](https://img.shields.io/badge/Nix-5277C3?logo=nixos&logoColor=fff)](#)

[![](https://raw.githubusercontent.com/dch82/Nixpkgs-Badges/main/nixpkgs-badge-dark.svg)](https://search.nixos.org/packages?size=1&show={{PACKAGENAME}})

[![Built with Nix badge](https://img.shields.io/badge/Built_With-Nix-5277C3.svg?logo=nixos&labelColor=73C3D5)](https://www.nixos.org/)

Built on [![NixOS](https://img.shields.io/badge/NixOS-5277C3?style=for-the-badge&logo=nixos&logoColor=white)](#)

<img width='200' src="https://img.shields.io/badge/NixOS-5277C3?style=for-the-badge&logo=nixos&logoColor=white" />

CI: <img width='200' src="https://img.shields.io/badge/Github%20Actions-282a2e?style=for-the-badge&logo=githubactions&logoColor=367cfe" />

<img width='200' src="https://github-readme-activity-graph.vercel.app/graph?username=ryzengrind&theme=merko" />

[![made-with-Markdown](https://img.shields.io/badge/Made%20with-Markdown-1f425f.svg)](http://commonmark.org)

[![made-for-VSCode](https://img.shields.io/badge/Made%20for-VSCode-1f425f.svg)](https://code.visualstudio.com/)



![image]({BadgeURLHere})
![image]({BadgeURLHere})
![image]({BadgeURLHere})
