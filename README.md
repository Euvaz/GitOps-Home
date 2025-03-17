# K8s backed by Talos Linux and Flux

[K8s](https://kubernetes.io/) cluster backed by [Talos Linux](https://www.talos.dev/), [Flux](https://toolkit.fluxcd.io/) and [SOPS](https://toolkit.fluxcd.io/guides/mozilla-sops/).

Powered by the [GitOps](https://www.weave.works/blog/what-is-gitops-really) tool [Flux](https://toolkit.fluxcd.io/). Utilizing [Flux](https://toolkit.fluxcd.io/guides/mozilla-sops/) SOPS integrations to utilize Age encrypted secrets within this public repository.

Effectively, this GitHub repository is the heart of my cluser.

## Overview

- [Repository structure](#-repository-structure)
- [Rebuild counter](#-rebuild-counter-11)

## 📂 Repository structure

The Git repository contains the following directories under `cluster`.

```
cluster/            # Root cluster directory
├── ${CLUSTER_NAME}     # Named cluster subdirectory
│   ├── kubernetes          # Kubernetes configurations
│   │   ├── apps                # Application manifests organized within namespace directories
│   │   ├── bootstrap           # Flux and Talos bootstrapping resources
│   │   └── flux                # Core Flux configurations
│   └── talos               # Talos Linux configurations
│       └── configs             # Configuration files
└── ...                 # Additional clusters
```

## 💣 Rebuild counter: 11

How many times I've had to nuke and re-build my cluster, either due to hardware failure or hasty updating.
