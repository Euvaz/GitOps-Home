# K8s backed by Fedora CoreOS and Flux

[K8s](https://kubernetes.io/) cluster backed by [Fedora CoreOS](https://fedoraproject.org/coreos/), [Flux](https://toolkit.fluxcd.io/) and [SOPS](https://toolkit.fluxcd.io/guides/mozilla-sops/).

Powered by the [GitOps](https://www.weave.works/blog/what-is-gitops-really) tool [Flux](https://toolkit.fluxcd.io/). Utilizing [Flux](https://toolkit.fluxcd.io/guides/mozilla-sops/) SOPS integrations to utilize Age encrypted secrets within this public repository.

Effectively, this GitHub repository is the heart of my cluser.

## Overview

- [Repository structure](#-repository-structure)
- [Rebuild counter](#-rebuild-counter-10)

## 📂 Repository structure

The Git repository contains the following directories under `kubernetes`.

```
kubernetes/     # Kubernetes cluster defined as code
├── apps        # Regular applications, namespaced directory tree
├── bootstrap   # Flux Installation
└── flux        # Main flux configuration
```

## 💣 Rebuild counter: 10

How many times I've had to nuke and re-build my cluster, either due to hardware failure or hasty updating.
