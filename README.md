# action-setup-vs

> [VapourSynth](https://github.com/vapoursynth/vapoursynth) setup action

[![GitHub: Release](https://img.shields.io/github/v/release/deadnews/action-setup-vs?logo=github&logoColor=white)](https://github.com/deadnews/action-setup-vs/releases/latest)
[![CI: pre-commit](https://results.pre-commit.ci/badge/github/deadnews/action-setup-vs/main.svg)](https://results.pre-commit.ci/latest/github/deadnews/action-setup-vs/main)
[![CI: Main](https://img.shields.io/github/actions/workflow/status/deadnews/action-setup-vs/main.yml?branch=main&logo=github&logoColor=white&label=main)](https://github.com/deadnews/action-setup-vs/actions/workflows/main.yml)

## Usage

```yaml
# with tag:
- name: Setup vapoursynth
  uses: deadnews/action-setup-vs@v1.0.6

# with digest pinning:
- name: Setup vapoursynth
  uses: deadnews/action-setup-vs@edf769daa66dcf69c9e87bc984d74edfef3b29ad # v1.0.6
```

Examples of valid GitHub tags: `main`, `v1`, `v1.0`, `v1.0.1`.

[Example](https://github.com/deadnews/action-setup-vs/blob/main/.github/workflows/main.yml) to get started.

## Supported runners

- linux
- macos
