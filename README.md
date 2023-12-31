# K8s backed by Talos Linux and Flux

[K8s](https://kubernetes.io/) cluster backed by [Talos Linux](https://www.talos.dev/), [Flux](https://toolkit.fluxcd.io/) and [SOPS](https://toolkit.fluxcd.io/guides/mozilla-sops/).

Powered by the [GitOps](https://www.weave.works/blog/what-is-gitops-really) tool [Flux](https://toolkit.fluxcd.io/). Utilizing [Flux](https://toolkit.fluxcd.io/guides/mozilla-sops/) SOPS integrations to utilize Age encrypted secrets within this public repository.

Effectively, this GitHub repository is the heart of my cluser.

## Overview

- [Repository structure](#-repository-structure)
- [Rebuild counter](#-rebuild-counter-7)
- [Thanks](#-thanks)

## 📂 Repository structure

The Git repository contains the following directories under `kubernetes`.

```
kubernetes/     # Kubernetes cluster defined as code
├── apps        # Regular applications, namespaced directory tree
├── bootstrap   # Flux Installation
└── flux        # Main flux configuration
```

## 💣 Rebuild counter: 7

How many times I've had to nuke and re-build my cluster, either due to hardware failure or hasty updating.

## 🤝 Thanks

I sincerely appreciate all the past, present, and future guidance and advice from those who helped make this possible.
I would also like to thank those that contributed to the projects being used within this repository.
