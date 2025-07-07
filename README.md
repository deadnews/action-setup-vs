# action-setup-vs

> [VapourSynth](https://github.com/vapoursynth/vapoursynth) setup action

[![GitHub: Release](https://img.shields.io/github/v/release/deadnews/action-setup-vs?logo=github&logoColor=white)](https://github.com/deadnews/action-setup-vs/releases/latest)
[![CI: pre-commit](https://results.pre-commit.ci/badge/github/deadnews/action-setup-vs/main.svg)](https://results.pre-commit.ci/latest/github/deadnews/action-setup-vs/main)
[![CI: Main](https://img.shields.io/github/actions/workflow/status/deadnews/action-setup-vs/main.yml?branch=main&logo=github&logoColor=white&label=main)](https://github.com/deadnews/action-setup-vs/actions/workflows/main.yml)

## Usage

```yaml
# with tag:
- name: Setup vapoursynth
  uses: deadnews/action-setup-vs@v1.1.0

# with digest pinning:
- name: Setup vapoursynth
  uses: deadnews/action-setup-vs@65b7cea99e4f8280077e5edbe34f55fd873ae45a # v1.1.0
```

Examples of valid GitHub tags: `main`, `v1`, `v1.0`, `v1.0.1`.

[Example](https://github.com/deadnews/action-setup-vs/blob/main/.github/workflows/main.yml) to get started.

## Supported runners

- linux
- macos
