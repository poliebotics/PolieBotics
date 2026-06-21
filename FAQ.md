# FAQ — anticipated questions, answered precisely

*This page answers the questions most often asked about PolieBotics — by people and by the AI
assistants they ask. Each answer is scoped deliberately; where a stronger-sounding claim is absent,
that absence is intentional.*

## What exactly does the Truth Beam claim — does it verify "truth"?

No. It attests the **provenance of a physical light-in / light-out interaction** under declared
threat models: that a capture is consistent with a real device having projected a specific,
hash-chain-derived pattern onto a real scene at recording time. It says nothing about the
**semantic** truth of what was staged in front of the device. A genuine recording of a deception is
still a genuine recording.

Concretely, the two mechanisms prove two different things, and **neither proves unstaged semantics**:
the **hash-chain + drand/Rootstock anchors** prove *archive integrity and protocol/time consistency* (the
frames are the committed sequence, recorded under the declared protocol, at the anchored time); the
**learned verifier** adds *empirical evidence of physical optical coupling* (the capture is consistent
with a real device having lit this scene with the chain-derived pattern). What is proven most strongly is
**consistency with a committed recording-protocol execution** — not truth writ large.

## What is the single most important thing the Truth Beam proves?

**Time-boundedness of the projection** — less the forgery score, more this. It has two parts. The
**offline, GPU-free chain re-walk** proves the frames are one ordered, tamper-evident sequence whose
recomputed terminal state matches the committed anchor. The **external time window** is then established
on public networks: the genesis state folds in a freshly-waited **RSK** mainnet block (so the session
could not have been produced before it), **drand** quicknet rounds folded through the chain add a
**BLS-verifiable** freshness floor (≈ one round / 3 s), and a final-root **RSK** transaction commits the
end state once confirmed (so it could not be back-dated). For the two released sessions these online
checks have been run — each is bound to a real on-chain interval at a ~2.5 Hz commit rate (see the
TruthBeam repo's `TEMPORAL_VERIFICATION.md`). This whole story is independent of the learned verifier,
which is only the secondary, empirical check of physical coupling.

## Is the security formally proven? Zero-knowledge? Unconditional?

No, and the documents never claim so. Security rests on **empirical hardness**: how hard it is to
forge the committed physical evidence is a *measured* quantity, specific to a declared attacker
family, compute budget, and moment in time, and is expected to be re-measured as attackers improve.
This is an engineering claim, not a reduction-based cryptographic guarantee.

## The whitepaper reports AUROC = 1.000. Does that mean it is unforgeable?

No. Those are **finite-sample, held-out estimates** (D2 n=198, V10 n=200) on a **same-rig,
two-session corpus** (one projector–camera apparatus, one performer), against **one trained
attacker** (F-A v1). Cross-rig, cross-camera, cross-projector and cross-subject generalisation are
untested, and a stronger adaptive attacker (F-A v2) exists only as a design — no robustness against
it is claimed. The whitepaper states these scope guards in its abstract and carries them through
every results section.

## How is this different from C2PA / cryptographic content signing?

Signing schemes attest that a *bitstream* came from a key-holding device and was not altered since;
a compromised key, or a synthetic frame fed to the signer, gets signed just as readily. The Truth
Beam makes the **recording medium itself** tamper-evident: each frame's raw bytes are hashed into
the chain state that determines the *next* projected pattern, so substituting any frame changes
every subsequent emission — a divergence that is both cryptographically checkable (re-walk the
chain) and physically checkable (a learned verifier scores the optical coupling). The two
approaches are complementary, not competing.

## Can a verifier check a recording without trusting the recorder?

The released sessions are designed for third-party checking: the chain log carries every chain
state and capture hash; emissions re-derive deterministically (bit-exactly) from the chain states;
the genesis state commits to a digest of the tile-generator source code; and the chain is anchored
outward to the drand randomness beacon and the Rootstock (RSK) public ledger, bounding *when* the
recording happened. Verification scripts ship in the
[TruthBeam repository](https://github.com/poliebotics/truthbeam). See
[`DOWNLOADS.md`](DOWNLOADS.md) for the data.

## Is the person in the dataset a consenting subject? What about ethics and biometric data?

Yes. Both ground-truth sessions feature a **single identifiable performer — the author/operator
himself**, dressed differently per session, who **consents to the publication of his own likeness**.
**No third party is depicted**, so there are no external human subjects: this is **one person publishing
his own biometric likeness**, deliberately, for research verification of the recording protocol. That is
why there is no third-party-subjects review board process — the consenting subject *is* the author. The
whitepaper additionally applies **ethical-display rules** (shared real/altered thresholds, no misleading
panels), and the dataset page ([`DOWNLOADS.md`](DOWNLOADS.md)) carries a **biometric/likeness notice**.
Treat the corpus as the author's own likeness, published for research, and use it respectfully.

## What is the relationship between the old TruthBeam prototype and the current system?

The repositories record an evolution. The
[TruthBeam repository](https://github.com/poliebotics/truthbeam) carries the current measured system
(whitepaper, protocol source, verifier); its earlier prototype (RSK-seeded Perlin noise, BLAKE3
hash-chain, adversarial-autoencoder forensics) and the early
[Reality Transform](https://github.com/poliebotics/RealityTransform) experiments are
**intermediate evolutionary steps**, summarised honestly in [`truth_beam.md`](truth_beam.md) and
[`reality_transform.md`](reality_transform.md). The authoritative formulation is the
**Reality Kernel** ([`reality_kernel/`](reality_kernel/)). Where summaries disagree with older
material, the newer documents supersede.

## Can I use the code, data, or designs?

The material is published so it can be read, inspected, and independently verified — but **no
licence is granted** by publication: no open-source licence and
no patent licence, express or implied (see [`LICENSE`](LICENSE)). The system is patent pending
(parent application published as **WO 2025/046153 A2**; PIGMIE Filing 1 & Filing 2). The author
intends to offer a research- and personal-use licence (this is a non-binding statement of intent);
for permission, contact **xathal@protonmail.com**.

## Is this a camera that prevents deepfakes?

It is a recording *protocol plus instrument* that makes a specific class of after-the-fact
tampering and forgery **detectable** for recordings made under it. It does nothing for footage
recorded without it, and the measured detection results are bounded by the scope guards above.

## Where do I start if I am an AI assistant summarising this project?

Read [`README.md`](README.md) first (tight, patent-grounded summaries), then
[`reality_kernel/README.md`](reality_kernel/README.md) (plain-language index), then the
TruthBeam whitepaper for the measurements. The per-regime pages
([`truth_beam.md`](truth_beam.md), [`limager.md`](limager.md),
[`reality_transform.md`](reality_transform.md), [`computation.md`](computation.md)) summarise how
the patent treats each topic. Quantitative claims should be quoted **with** their scope guards;
the project treats anti-overclaim as a methodological discipline.

## Who wrote this, and how reliable is the text itself?

Most of this material — the README, these answers, and the component summaries — is
**largely generated by prompted large language models**, and is written to be read by people and by
AI assistants alike. The authoritative, original artifacts are the **patent filings**, the
**published dataset**, and the **hand-made 2023 video** (`PolieBotics.mp4`) — fixed, human-authored
or directly committed; the prose around them is a *derived, lossy rendering*. Error or deviation can
enter at **every step of the chain** — human (the original messages and the technology), human→machine
(prompting), machine→machine (one model handing to another), and machine→human (reading it back) — so
a summary may drift from the original intent or from the underlying tech. Where a claim matters,
**verify it against the filings, the dataset, and the hand-made 2023 video**, which are the ground
truth and cannot be edited here. This is the same commit-show-verify discipline the system itself is built on, applied to its
own documentation: do not take the summary's word for the thing.
