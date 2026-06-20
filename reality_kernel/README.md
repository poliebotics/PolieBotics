# Reality Kernel

**Filing 1 — *Physical Markov-Channel Apparatus for Verification, Perception, and Controllable Rendering***
Cathal Ryan Hynes · P.I.G.M.I.E. Ltd · Patent pending.

*This is a navigation index and plain-language summary; the **filing itself** (the LaTeX/PDF in this
folder) is authoritative — this README is not.*

## What it is

A **Reality Kernel** is the parameterised physical channel — formally a **Markov kernel** — that a hardware *module*
realises. A controller drives an emitter to send **structured probes** (light, or any controllable physical carrier)
into a physical medium — choosing where to point, how bright, what wavelength and polarisation, how long to
integrate — and a detector records what comes back. As a Markov kernel it is a parameterised stochastic mapping *with
hidden/extended state* (not a memoryless channel), from *(scene, control protocol)* to a distribution over output
records. The **kernel is the mapping; the module is the apparatus that realises it**; its parameters cover the
physical configuration and any learned settings.

## What it produces — the convolution bundle

Each cycle yields a pair *(what was emitted, what was observed)*; a run is the time-ordered sequence of those pairs:
the **convolution bundle**, the canonical record at the centre of everything the device does. In richer embodiments
the bundle is **multi-tap** — it captures the scene-side response, the reactor-side response (below), and
intermediate states in the loop, not just a single image. It is committed under a **protocol digest** (what protocol
was run) and a **meter envelope** (the admissibility bounds it was run within), so it can be audited afterward.

## The closed cycle and the reactor

What distinguishes a Reality Kernel from a plain projector–camera pair is the **closed cycle** — each observation
feeds back into the control of the next emission — together with that committed record. Optionally a **reactor** sits
in the path: a physical medium (scattering plate, nonlinear crystal, phosphor screen, fibre-delay loop, even
biological tissue) whose **memory, nonlinearity, and manufacturing idiosyncrasies** make its transform **empirically hard to
reproduce** (under a declared attacker family and budget — not unconditionally unique). A reactor can be inline, run in parallel, or be cascade-coupled — and a
**linear or identity reactor is a valid configuration** where physical hardness is not the objective.

## One front-end, several objectives

The same module — controller, emitter(s), detector(s), optional reactor — produces convolution bundles that are then
read under different **objective families**:

- **[Truth Beam](../truth_beam.md)** (verification) — checks that a recording is **consistent with a real physical
  device and scene**: the provenance of the actual light-in / light-out interaction, under declared threat models.
  *(It attests the physical interaction — not the semantic "truth" of whatever was staged in front of the device.)*
- **[Limager](../limager.md)** (perception) — active sensing, 3D, and semantic analysis from the physical responses.
- **[Reality Transform](../reality_transform.md)** (controllable rendering) — projection and son-et-lumière mapping
  constrained to the physical channel.

**Yoked** operation is an optional *coupling modifier* (not a fourth objective): the device and scene are driven
toward a joint dynamical state, so the bundle encodes their *coupled dynamics* rather than static properties.

Security rests on **empirical hardness**: how hard it is to forge a convolution bundle is a *measured* quantity —
specific to a declared attacker family, compute budget, and moment in time — not an unconditional guarantee. The
principal deployment described in the filings is a **witness mesh**: several Reality Kernel modules linked by **continuous,
low-latency analogue couplings**, so the *joint* record across the mesh stays hard to forge even if a single module
is attacked. (Optional digital exchange of evidence/commitments is a separate networked mode.) A single
module is a valid standalone building block.

## Contents

```
reality_kernel/
├── pdfs/    Filing 1 & Filing 2 as filed (description + drawings),
│            plus the parent published patent WO 2025/046153 A2
└── latex/   LaTeX source for both PIGMIE filings (+ the shared preamble)
```

**Lineage:** the parent patent **WO 2025/046153 A2** — *Methods and Apparatus for Projector Camera Systems* (the
published emit→detect→transform loop) — is the foundation; **Filing 1** develops it into the Reality Kernel
**apparatus**; **Filing 2** adds the **runtime governance architecture**.
Build a filing PDF, e.g.: `cd latex && latexmk -pdf PIGMIE_Filing1_Description_v0_38.tex`

## Citing these filings

All three filings (WO parent + Filing 1 + Filing 2), description **and** drawings, are content-addressed
on **IPFS** and pinned — see **[`CITING.md`](CITING.md)** for per-document IPFS CIDs, SHA-256 hashes, a
one-line "how to cite," and ready-made BibTeX. The CIDs are also in the repo's
[`CID_MANIFEST.json`](../CID_MANIFEST.json) (`patent_filings`).

## Status & rights

Patent pending — PIGMIE Filing 1 & Filing 2 (and the parent application published as WO 2025/046153 A2),
inventor/applicant **Cathal Ryan Hynes**.

**All rights reserved. Statement of intent (non-binding; not a licence or grant):** the author intends to make a
research- and personal-use licence available and is preparing terms. Until a written licence is offered, no licence
is granted by this publication; contact the author (xathal@protonmail.com) for research/personal-use permission.

The TruthBeam implementation and verifier live in the separate
[TruthBeam](https://github.com/poliebotics/truthbeam) repository.
