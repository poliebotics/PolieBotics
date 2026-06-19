# Known issues — to resolve before publication

**Provenance (read first).** This repository is **human-authored *through* an LLM**: the author
directs, reviews, selects, and is responsible for the content; an LLM is the drafting instrument.
This file is no exception. The patent filings under `reality_kernel/` are inventor-reviewed and
filed (and themselves disclose AI drafting/formatting assistance); they are the **control text** —
authoritative because **filed and inventor-reviewed**, not because no model touched them. Error can
enter at every layer (memory → LLM rendering → operationalisation → story → reading-back); the items
below are the ones already known.

> Working checklist — **not intended to ship.** Resolve, then remove before the public push.
> (This file is untracked by design so it cannot be pushed accidentally.)

---

## 1. URLs — unresolved `https://data.truthbeam.com` placeholders  *(blocker)*
Download and image links are templates, not live URLs, so "every object has its own direct URL" is
not yet true.
- **Affected:** `DOWNLOADS.md`, `downloads/d2_files.txt`, `downloads/v10_files.txt`, `truth_beam.md`
  (stills), `rt_samples/GALLERY.md`.
- **Fix:** substitute the real immutable R2 base URL — `tools/r2_fill.sh <base>` — then run the guard
  `tools/r2_release_check.sh`; it must pass (0 placeholders) before publish.

## 1a. Mask binaries — upload to R2  *(blocker for the mask page)*
The `mask/` page links to `__POLIEBOTICS_BASE__/mask/Mask_For_Printing.{stl,obj,stp}`, but the binaries are
not yet on R2 (too large for git — the STL is ~206 MB, over GitHub's 100 MB limit).
- **Staged at:** `/home/c/Documents/poliebotics_mask_r2_staging/mask/` (URL-friendly names).
- **Fix:** upload to R2 under `mask/` (e.g. `rclone copy /home/c/Documents/poliebotics_mask_r2_staging/mask r2:truthbeam/mask`),
  then the same `tools/r2_fill.sh <base>` substitution covers these links; re-run `r2_release_check.sh`.

## 1b. PolieProboscis model — verify before publish  *(minor)*
The newer hinged PolieProboscis model (`proboscis/PolieProboscis_DFCP_Spheric_hinged_20260116.zip`,
3-part DFCP SPHERIC: body + top cover + hinge pins, ~8.8 MB) is included **for reference, untested** —
operator has not test-printed it yet ("will test and fix as necessary"). Confirm a clean print before
presenting it as validated; until then the README labels it untested.

## 2. Signatures — `SUPPORT.md` ships unsigned  *(major)*
The page asks readers to trust the signed copy, but no detached signature is included.
- **Fix:** publish `SUPPORT.md.asc` (and/or `support/addresses.json` + `.asc`) signed with the
  hardware-backed (Trezor) GPG key, fingerprint `A8DC 9A41 F927 6260 1892 A646 ABFD 37A9 F45A 5286`;
  wire the verify commands to that exact signed file.

## 3. Trademarks — `®`/`™` inconsistent and unnumbered  *(major)*
> **✓ RESOLVED 2026-06-17.** Both notices (`README.md`, `universe.md`) aligned to the IPO inventory,
> numbered, and ®/™ corrected — Reality Kernel (pending 2025/03255), Narravite (accepted 274828) and
> Limager (in prep; register holds "Limage" 270047) marked **™ only**. README carries the full numbered
> list; universe.md footer matches and points to it.

`README.md` and `universe.md` mark lists disagree and give no registration/application numbers;
mis-using `®` is legally risky.
- **Fix:** align both to the inventory at `/home/c/Documents/20260611_trademarks/`; use `™` unless
  registration is evidenced; add a short mark table (mark · office · status · number · owner).
- **Known status:** registered — PolieBotics, Truth Beam, Reality Transform, PoliePuter,
  PolieProboscis, P.I.G.M.I.E.; pending — Reality Kernel (2025/03255); "Limager" still to be filed
  (currently registered as "Limage", 270047).

---

## Also noted — ✓ all resolved 2026-06-17
- **"testament" overloaded** — ✓ DONE. "testament" now means the personal-experience layer only; the
  filings are no longer called "testaments" and the 2023 video is "an original record"
  (`README.md`, `DOWNLOADS.md`, `llms.txt`).
- **Quantitative claims** (AUROC = 1.000, n = 198/200, 39.77 M verifier, 42.3 M forger) — ✓ **verified
  exact** against the whitepaper *and* the eval data (`phase_g_diffusion_diagnostic/main/eval/summary.json`,
  checkpoint `model_final.pt` = 39,769,828 params, `F_A_V1_FINAL_REPORT.md`); they are true. **Pinned
  citation added** in `truth_beam.md` (FAQ.md already attributes to the whitepaper).
- `reality_kernel/README.md` "authoritative" wording — ✓ DONE. Reworded to "navigation index /
  plain-language summary; the filing itself is authoritative." (Same fix applied to the stray
  "authoritative description" refs in `FAQ.md` and `llms.txt`.)
