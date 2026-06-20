# Security policy & contact

**Reporting.** For a security or integrity issue in any PolieBotics property — a way to forge a Truth
Beam recording that passes verification, a flaw in the chain/anchor verification, a leaked credential, or
a privacy concern — report it privately to **xathal@protonmail.com**. For sensitive reports, encrypt to
the project's published GPG key (fingerprint and full key in [`SUPPORT.md`](SUPPORT.md)).

**What to include.** The artifact URL or commit hash, the exact steps, and — for a forgery claim — the
inputs and the verifier output, so it can be reproduced independently.

**Response window — please read.** These are **stable research snapshots** published by a solo author who
is **stepping back to other work for some months** after release. Reports are monitored, but a reply may
take **several weeks**. This is **not a hosted service or a product** — there is no SLA and no operational
on-call. Confirmed-critical issues (a working forgery, a credential leak) are prioritised when reviewed.

**Scope.**
- *In scope:* the published code (verifier, forger, Reality Transform), the chain and anchor
  verification, the released artifacts, and any credential or third-party-privacy leak in these repos.
- *Out of scope:* the **narrow-by-design limits already disclosed** — same-rig vs cross-rig
  generalisation, adaptive attackers beyond F-A v1, and the analogue capabilities still being
  characterised in the filings. Those are **documented open problems, not vulnerabilities**.
- *Not security reports:* questions about the **fiction layer** (PoliePals) or the **testament** — those
  are clearly-labelled non-technical material (see [`README.md`](README.md) → the three layers).

**Disclosure.** Please allow reasonable time for a fix or a documented acknowledgement before public
disclosure.
