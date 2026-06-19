# Downloads

The two ground-truth example sessions are hosted on Cloudflare R2 (~378 GiB total,
**29,266 files**). R2 serves direct downloads with **no egress fees**.

Every object has its own direct URL. The complete, machine-readable lists (one URL per
line, ready for `wget -i` / `curl`) are:

- [`downloads/d2_files.txt`](downloads/d2_files.txt) — Session A (D2), 17,987 files, 232 GiB
- [`downloads/v10_files.txt`](downloads/v10_files.txt) — Session B (V10), 11,279 files, 146 GiB

Per-object MD5 checksums for every file (paths relative to each session root):

- [`downloads/d2_md5sums.txt`](downloads/d2_md5sums.txt) · [`downloads/v10_md5sums.txt`](downloads/v10_md5sums.txt)

(The raw captures and emission tiles are additionally committed by per-frame **BLAKE3**
hashes inside each session's `chain_log.csv` — that, not MD5, is the cryptographic claim;
the MD5 lists are a transfer-integrity convenience.)

Bulk download, e.g.:

```bash
wget -x -c -i downloads/d2_files.txt     # mirrors the session tree locally (resumable)
# verify a mirrored session tree (run from the sessions/d2/ directory):
md5sum -c d2_md5sums.txt
# or a single file:
curl -O https://data.truthbeam.com/sessions/d2/verification_bundle.json
```

The dataset is also content-addressed on IPFS (permanence courtesy; gateway availability varies).
Each session is its own reproducible CID (UnixFS directory DAG):

- **session D2** (249.3 GB, 17,987 files) — `bafybeicrssbic35534es3sbwyzhlw7reboh6wy75htmo53ke5mfsphkmwi`
- **session V10** (156.9 GB, 11,279 files) — `bafybeier2sfcjrrgw7amne3lwogise6umyeyf6qgivgrmvx3to4vsdsbcm`

Every CID is reproducible from the bytes:
`ipfs add --only-hash --recursive --cid-version=1 --raw-leaves --chunker=size-1048576 <session>`.
(The full per-unit manifest — sessions, models, evidence — is published as `CID_MANIFEST.json`.)

---

## The hand-made 2023 video — `PolieBotics.mp4`

An **original record**: the original, **hand-made** 2023 PolieBotics video (≈2:08, ~608 MiB, H.264/MP4) — a
human-authored record from before the LLM-assisted rebuild, and one of the project's primary records
to verify against (see the README's *provenance & error* note), not an authority in itself. It is **committed by hash** here, so its
integrity is verifiable independent of where it is hosted:

- **BLAKE3:** `8fbdb64ddd248246e7a8d840fa191467ab24ea79058047deb0ea537af95c0e92`
- **SHA-256:** `00d0e4531c1896ff72bf1ac7b7f2a4146af4f8ee5b08a63bc8708f333feb87b7`
- size `636,733,091` bytes · duration `127.99 s`

Available on **R2** at [`https://data.truthbeam.com/pinata/PolieBotics.mp4`](https://data.truthbeam.com/pinata/PolieBotics.mp4), and
on **IPFS** at CID
[`QmP8JDfeBCunq4VQ8f6XUbiLJK55dG9jLav7k5q2HpnmxS`](https://ipfs.io/ipfs/QmP8JDfeBCunq4VQ8f6XUbiLJK55dG9jLav7k5q2HpnmxS)
(Pinata-pinned; resolves on public gateways, availability varies). Verify with `b3sum
PolieBotics.mp4` or `sha256sum PolieBotics.mp4`. *(BLAKE3 is the project's canonical commitment — the
same hash family that commits each dataset frame in `chain_log.csv`.)*

---

## Printables

**The PolieProboscis model** — the demonstration-hardware rig, hinged 3-part DFCP SPHERIC (in-repo):
[`proboscis/PolieProboscis_DFCP_Spheric_hinged_20260116.zip`](proboscis/PolieProboscis_DFCP_Spheric_hinged_20260116.zip)
(~8.8 MB; body + top cover + hinge pins; thanks to Alfonso). Included **for reference, not yet
test-printed**.

*(The author's **Cathal** costume **mask** — a bauta, Alfonso's execution, with novel reflective
conical-hole eyes — lives in the PoliePals fiction layer: **[poliepals.com](https://poliepals.com)** → The mask.)*

---

## Session A — D2 (232 GiB, 17,987 files)

Start here:

- [`README_BUNDLE.md`](https://data.truthbeam.com/sessions/d2/README_BUNDLE.md) — what the bundle contains
- [`CLAIMS.md`](https://data.truthbeam.com/sessions/d2/CLAIMS.md) — the claims this session supports
- [`manifest.json`](https://data.truthbeam.com/sessions/d2/manifest.json) · [pretty](https://data.truthbeam.com/sessions/d2/manifest.pretty.json) — full file manifest + digests
- [`verification_bundle.json`](https://data.truthbeam.com/sessions/d2/verification_bundle.json) · [pretty](https://data.truthbeam.com/sessions/d2/verification_bundle.pretty.json) — the auditable evidence bundle
- [`verify_report.json`](https://data.truthbeam.com/sessions/d2/verify_report.json) — verifier output

Logs:

- [`capture_log.csv`](https://data.truthbeam.com/sessions/d2/capture_log.csv) · [`chain_log.csv`](https://data.truthbeam.com/sessions/d2/chain_log.csv) · [`anchor_txs.csv`](https://data.truthbeam.com/sessions/d2/anchor_txs.csv)

Frame data (5,992 each — see [`d2_files.txt`](downloads/d2_files.txt) for per-frame URLs):

- `Recordings/` — raw captures
- `derived/Emissions/` — emitted tiles
- `derived/Recordings_previews/` — preview renders

## Session B — V10 (146 GiB, 11,279 files)

Start here:

- [`README_BUNDLE.md`](https://data.truthbeam.com/sessions/v10/README_BUNDLE.md) — what the bundle contains
- [`CLAIMS.md`](https://data.truthbeam.com/sessions/v10/CLAIMS.md) — the claims this session supports
- [`manifest.json`](https://data.truthbeam.com/sessions/v10/manifest.json) · [pretty](https://data.truthbeam.com/sessions/v10/manifest.pretty.json) — full file manifest + digests
- [`verification_bundle.json`](https://data.truthbeam.com/sessions/v10/verification_bundle.json) · [pretty](https://data.truthbeam.com/sessions/v10/verification_bundle.pretty.json) — the auditable evidence bundle
- [`verify_report.json`](https://data.truthbeam.com/sessions/v10/verify_report.json) — verifier output

Logs:

- [`capture_log.csv`](https://data.truthbeam.com/sessions/v10/capture_log.csv) · [`chain_log.csv`](https://data.truthbeam.com/sessions/v10/chain_log.csv) · [`anchor_txs.csv`](https://data.truthbeam.com/sessions/v10/anchor_txs.csv)

Frame data (3,743 each — see [`v10_files.txt`](downloads/v10_files.txt) for per-frame URLs):

- `Recordings/` — raw captures
- `derived/Emissions/` — emitted tiles
- `derived/Recordings_previews/` — preview renders
- `ai_payloads/` — AI improv payloads (V10 only)

---

*All rights reserved. The dataset is published for inspection and verification under the
non-binding statement of intent in [`LICENSE`](LICENSE); no licence is granted by this
publication.*
