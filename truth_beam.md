# Truth Beam — the verification regime

*The verification operating regime of the [Reality Kernel](reality_kernel/). Patent pending; all rights reserved.*

Truth Beam runs the Reality Kernel to ask, of a scene, **"who are you?"** It interrogates the scene through the
physical channel and produces a committed **convolution bundle** — the time-ordered record of *what was emitted* and
*what was observed*. A learned model scores how consistent a capture is with its chain-coupled emission; in some
embodiments the device optimises **Fisher information about its own configuration**, so that forgeries become
**empirically detectable under bounded adversary resources**.

The claim is deliberately narrow. Truth Beam attests the **provenance of the physical light-in/light-out
interaction** under declared threat models; it does **not** certify the semantic "truth" of a staged scene (a
real-but-misleading scene can still pass). *(The patent filing also describes an optional "semantic
Truth Beam" embodiment — provenance and auditability of claim-relevant evidence and labels — which is **not**
part of the released system and likewise does not certify the truth of real-world propositions.)* Empirical
hardness comes from reactor nonlinearity and manufacturing
microstructure, and is a *measured* quantity — specific to a declared attacker family, compute budget, and moment in
time — not an unconditional guarantee.

## Reference implementation — the measured system

The [TruthBeam](https://github.com/poliebotics/TruthBeam) repo carries the measured implementation and its
whitepaper (PDF + full LaTeX source). At each chain step a 32-byte chain state is **BLAKE3-XOF**-expanded
into a deterministic fractional-Brownian-motion emission tile (bit-exact integer renderer), projected, and
captured as a raw 8-bit BayerRG8 frame; the capture's hash is folded — with the **drand** public-randomness
beacon — back into the next chain state, and session commitments are anchored on **Rootstock (RSK)**.
A diffusion-residual verifier (a 39.77 M-parameter ε-prediction U-Net with ControlNet-style emission
conditioning) scores each (capture, emission) pair without ever denoising. On held-out blocks of the two
released sessions it separates correct from substrate-altered emissions at AUROC = 1.000, an
architecture-matched shuffled control sits at chance, and a 42.3 M-parameter trained forger is caught at
every checkpoint — all **same-rig, two-session, single-performer** results, with no cross-rig or
adaptive-attacker claim. *(Figures as reported in the companion whitepaper, linked above; they trace
to the run's checkpoint and evaluation summary — 39,769,828 verifier parameters, AUROC 1.000 on the
n = 198 (D2) and n = 200 (V10) held-out sets. These ML figures live in the companion TruthBeam artifacts
— checkpoints, negatives, per-pair scores; the released dataset lets you re-walk the hash chain, not
recompute the metric.)* The repo includes third-party verification scripts (code → generator hash →
chain re-walk) that run against the [released sessions](DOWNLOADS.md) without a GPU.

**Lineage — the earlier implementation.** An earlier, AI-assisted implementation previously
occupied this repo: an **RSK** blockhash seed generating Perlin structured noise (**PyCUDA**), each
projected frame BLAKE3 hash-chained to the previous frame, capture via **The Imaging Source / tiscamera**,
and a simple adversarial-autoencoder + latent-GAN (**PyTorch**) flagging inconsistent emission/capture
pairs. It remains an evolutionary step in the record; the measured system above and Filing 1's
empirical-hardness framing supersede it.

**Emission / capture stills** — the emitted structured-noise tile (left) and the demosaiced camera response
(right), from the two example sessions (full data in [`DOWNLOADS.md`](DOWNLOADS.md)):

*Session A (D2):*

| ![emitted tile](https://data.truthbeam.com/sessions/d2/derived/Emissions/tile_000500.png) | ![captured response](https://data.truthbeam.com/sessions/d2/derived/Recordings_previews/frame_000500.png) |
| :--: | :--: |
| Emitted tile | Captured response |

*Session B (V10):*

| ![emitted tile](https://data.truthbeam.com/sessions/v10/derived/Emissions/tile_002500.png) | ![captured response](https://data.truthbeam.com/sessions/v10/derived/Recordings_previews/frame_002500.png) |
| :--: | :--: |
| Emitted tile | Captured response |

See [`reality_kernel/`](reality_kernel/) for the authoritative description.
