# Third-party notices

The **Reality Transform** experiments build on third-party open-source projects, with
light modification ("much of the scaffolding is upstream code with light modification" —
[`reality_transform.md`](reality_transform.md)). The derivative code itself lives in the separate
[RealityTransform](https://data.poliebotics.com/gallery/) repository, which carries its own
`LICENSE`/notices; this file lists the upstream projects so readers of *this* repository don't have to
find them elsewhere.

| Upstream project | Authors / origin | Used for | License (consult upstream for authoritative terms) |
|---|---|---|---|
| **pix2pixHD** | Wang et al. (NVIDIA / UC Berkeley) | image-to-image inverse-response synthesis | per the pix2pixHD repository (research / non-commercial terms) |
| **OpenPose** | CMU Perceptual Computing Lab | human-body pose conditioning | OpenPose academic/non-commercial licence |
| **ControlNet** | Zhang et al. | pose-conditioned guidance | Apache-2.0 |
| **ComfyUI** | comfyanonymous and contributors | diffusion pipeline / graph runtime | GPL-3.0 |
| **Stable Diffusion** | CompVis / Stability AI | diffusion image model | CreativeML Open RAIL-M |
| **Describable Textures Dataset (DTD)** | Cimpoi et al. (University of Oxford, VGG) | texture priors | research-use terms |

This list is provided for attribution. Each project is governed by **its own licence as published by
its authors** — consult the upstream repository for the authoritative terms. Nothing in this
repository's own [LICENSE](LICENSE) (all rights reserved) alters the terms of these third-party works,
and no licence to them is granted or implied here.
