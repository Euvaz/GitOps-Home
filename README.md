# K3s backed by Flux

[K3s](https://k3s.io) cluster with [Ansible](https://www.ansible.com) and [Terraform](https://www.terraform.io) backed by [Flux](https://toolkit.fluxcd.io/) and [SOPS](https://toolkit.fluxcd.io/guides/mozilla-sops/).

Powered by the [GitOps](https://www.weave.works/blog/what-is-gitops-really) tool [Flux](https://toolkit.fluxcd.io/). Utilizing [Ansible](https://github.com/ansible-collections/community.sops), [Terraform](https://github.com/carlpett/terraform-provider-sops) and [Flux](https://toolkit.fluxcd.io/guides/mozilla-sops/) SOPS integrations to utilize Age encrypted secrets within this public repository.

Effectively, this GitHub repository is the heary of my cluser.

## Overview

- [Repository structure](https://github.com/euvaz/gitops-home#-repository-structure)
- [Thanks](https://github.com/euvaz/gitops-home#-thanks)

## 📂 Repository structure

The Git repository contains the following directories under `cluster` and are ordered below by how Flux will apply them.

```
cluster         # K3s cluster defined as code
├── base        # Flux, GitOps operator, loaded first
├── crds        # Custom resources, loaded before core and apps
├── charts      # Helm repositories, loaded before core and apps
├── config      # Cluster configuration, loaded before core and apps
├── core        # Crucial applications, namespaced directory tree, loaded before apps
└── apps        # Regular applications, namespaced directory tree, loaded last
```

## 🤝 Thanks

I sincerely appreciate all the past, present, and future guidance and advice from those who helped make this possible.
I would also like to thank those that contributed to the projects being used within this repository.
