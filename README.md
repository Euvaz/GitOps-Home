# K8s backed by Talos Linux and Flux

[K8s](https://kubernetes.io/) cluster backed by [Talos Linux](https://www.talos.dev/) and [Flux](https://toolkit.fluxcd.io/) and [SOPS](https://toolkit.fluxcd.io/guides/mozilla-sops/).

Powered by the [GitOps](https://www.weave.works/blog/what-is-gitops-really) tool [Flux](https://toolkit.fluxcd.io/). Utilizing [Flux](https://toolkit.fluxcd.io/guides/mozilla-sops/) SOPS integrations to utilize Age encrypted secrets within this public repository.

Effectively, this GitHub repository is the heart of my cluser.

## Overview

- [Repository structure](https://github.com/euvaz/gitops-home#-repository-structure)
- [Rebuild counter](https://github.com/euvaz/gitops-home#-rebuild-counter-6)
- [Thanks](https://github.com/euvaz/gitops-home#-thanks)

## 📂 Repository structure

The Git repository contains the following directories under `kubernetes`.

```
kubernetes/     # Kubernetes cluster defined as code
├── apps        # Regular applications, namespaced directory tree
├── bootstrap   # Flux Installation
└── flux        # Main flux configuration
```

## 💣 Rebuild counter: 6

How many times I've had to nuke and re-build my cluster, either due to hardware failure or hasty updating.

## 🤝 Thanks

I sincerely appreciate all the past, present, and future guidance and advice from those who helped make this possible.
I would also like to thank those that contributed to the projects being used within this repository.
