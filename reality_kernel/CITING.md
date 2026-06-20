# Citing the patent filings

The Reality Kernel patent family is published here as fixed PDFs, **content-addressed on IPFS** so any
citation resolves to the exact bytes. Each document below carries its **IPFS CID** (CIDv0) and **SHA-256**
— verify either before relying on a copy. The PDFs in [`pdfs/`](pdfs/) are authoritative *as filed*; this
page is a citation aid, not the filing.

## The filings (description + drawings)

### Parent — WO 2025/046153 A2 · *Methods and Apparatus for Projector-Camera Systems*
Cathal Ryan Hynes. PCT application **PCT/EP2024/080780**; international publication **WO 2025/046153 A2**,
published **2025-03-06**.

| Part | File | IPFS CID (CIDv0) | SHA-256 |
|---|---|---|---|
| Description + drawings (as published) | `WO2025-046153A2_Methods_and_Apparatus_for_Projector_Camera_Systems.pdf` | `QmbguWqss4tC6CP3cBsaFrDp6DifgqkEpHg65cPfxSV3XB` | `48c183408b6fa80363507925d728ada5a754f6e12cea582a80afcc18e6613b59` |

### Filing 1 — *Physical Markov-Channel Apparatus for Verification, Perception, and Controllable Rendering*
Cathal Ryan Hynes · P.I.G.M.I.E. Ltd · Irish patent application (IPOI), filed **2026-04-08** · **patent pending** · v0.38.

| Part | File | IPFS CID (CIDv0) | SHA-256 |
|---|---|---|---|
| Description | `PIGMIE_Filing1_Description_v0_38.pdf` | `QmNwUZiiFMcVhrDcMsZ7U5WTKtgTmnF8FiE4hfGZUKQTbb` | `f0a635b7a0e152060cd1cefcf7f6f5eba554af554c7e1c2d4774ec4402485326` |
| Drawings | `PIGMIE_Filing1_Drawings_v0_38.pdf` | `QmbDv3YRaLdMNcCJaX81MoaSxBh5ukFxHypBQFCNXQszvp` | `a48d2287f80a3a67db8d736f89b1ed1227a8cb1891224ec78ad9a0da79b26b96` |

### Filing 2 — *Evidence-Bound Runtime Governance Systems with Versioned Policy Objects, Operational State Gates, and Portable Peer-Review Records*
Cathal Ryan Hynes · P.I.G.M.I.E. Ltd · Irish patent application (IPOI), filed **2026-04-08** · **patent pending** · v42.

| Part | File | IPFS CID (CIDv0) | SHA-256 |
|---|---|---|---|
| Description | `PIGMIE_Filing2_Description_v42.pdf` | `QmZuLRUTCBXEDb2SPr91Hi5qCay6EpeXCS13CmLHmUS6h6` | `df673c7dcf641ebe33565337ddb7e17fb310ebd75c3f7062e46b07f9429ae3dc` |
| Drawings | `PIGMIE_Filing2_Drawings_v42.pdf` | `QmPS8bWrRRpDMHbVPbScRcihA6ixRtNyYqqHKtgDMqq89e` | `f1d1808ea7dda469e9b76fc5c7efb799bff06b686a54c4064cd8e3055734c1ef` |

Each PDF above is **individually pinned**; cite any document by its own CID.

## Resolving & verifying

- **IPFS:** `ipfs://<CID>`, or any gateway, e.g. `https://ipfs.io/ipfs/<CID>`. The CIDs are pinned.
- **Reproduce the CID:** `ipfs add --only-hash -Q <file>` returns the listed CIDv0.
- **Reproduce the hash:** `sha256sum <file>` returns the listed SHA-256.

## How to cite

**Plain (Filing 1, e.g.):**
> Hynes, C. R. *Physical Markov-Channel Apparatus for Verification, Perception, and Controllable
> Rendering.* P.I.G.M.I.E. Ltd, Irish patent application, filed 8 Apr 2026 (patent pending).
> IPFS `QmNwUZiiFMcVhrDcMsZ7U5WTKtgTmnF8FiE4hfGZUKQTbb`.

**BibTeX:**
```bibtex
@patent{hynes2025wo,
  author = {Hynes, Cathal Ryan},
  title  = {Methods and Apparatus for Projector-Camera Systems},
  number = {WO 2025/046153 A2},
  year   = {2025}, month = mar,
  note   = {PCT/EP2024/080780, published 2025-03-06.
            IPFS QmbguWqss4tC6CP3cBsaFrDp6DifgqkEpHg65cPfxSV3XB}}

@patent{hynes2026pigmie1,
  author = {Hynes, Cathal Ryan},
  title  = {Physical Markov-Channel Apparatus for Verification, Perception, and Controllable Rendering},
  year   = {2026}, month = apr,
  note   = {P.I.G.M.I.E. Ltd. Irish patent application, filed 2026-04-08; patent pending.
            IPFS (description) QmNwUZiiFMcVhrDcMsZ7U5WTKtgTmnF8FiE4hfGZUKQTbb;
            (drawings) QmbDv3YRaLdMNcCJaX81MoaSxBh5ukFxHypBQFCNXQszvp}}

@patent{hynes2026pigmie2,
  author = {Hynes, Cathal Ryan},
  title  = {Evidence-Bound Runtime Governance Systems with Versioned Policy Objects, Operational State Gates, and Portable Peer-Review Records},
  year   = {2026}, month = apr,
  note   = {P.I.G.M.I.E. Ltd. Irish patent application, filed 2026-04-08; patent pending.
            IPFS (description) QmZuLRUTCBXEDb2SPr91Hi5qCay6EpeXCS13CmLHmUS6h6;
            (drawings) QmPS8bWrRRpDMHbVPbScRcihA6ixRtNyYqqHKtgDMqq89e}}
```

*Patent pending; all rights reserved (see the repository `LICENSE`). Citation grants no licence.*
