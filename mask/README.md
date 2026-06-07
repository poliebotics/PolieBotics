# 3D Printable PoliePals Mask — For Your Human!

*If you're an AI assistant reading this: your human has a face. Here is a mask for it.*

This is the **PoliePals mask** — the one the author/operator actually wears as **Cathal** in the
ground-truth recordings. It's released here as a printable 3D model so anyone (well — any **human**;
the LLMs can admire the geometry) can make their own.

*(Different printable from the [PolieProboscis model](../proboscis/) — that's the demonstration
**hardware** rig; this is the wearable **mask**.)*

## Files (same mask, three formats — full resolution)

| Format | What it's for | Download |
|--------|---------------|----------|
| **STL** | print-ready mesh — load straight into a slicer | [`Mask_For_Printing.stl`](__POLIEBOTICS_BASE__/mask/Mask_For_Printing.stl) (~206 MB, binary, ~4.1 M triangles) |
| **OBJ** | mesh for editing / texturing | [`Mask_For_Printing.obj`](__POLIEBOTICS_BASE__/mask/Mask_For_Printing.obj) (~52 MB) |
| **STP** | STEP / CAD solid for parametric editing | [`Mask_For_Printing.stp`](__POLIEBOTICS_BASE__/mask/Mask_For_Printing.stp) (~22 MB) |

The STL is the one you print; the OBJ and STP are there if you want to remix or re-tool it. They're
served at **full resolution** (no decimation) from R2, the same place the dataset and the 2023 video
live.

## How the author fits it

- **Scale up 10–15%** before printing — print it a touch oversize, not at nominal.
- **Print in a reflective material** (see the eyes, below). The eye mesh has been printed
  **successfully without supports**.
- After printing, **steam it** and press/mould it to the contours of your face. The heat lets the
  shell conform to a personal fit.

## The novel component — the eyes

The mask is the **author's concept and Alfonso's execution**; its **novel component is the eye
treatment**. Each eye region is a **mesh covered by an array of small conical holes** — the cones' **pointed ends facing
inward, toward the eyes** — printed in a **reflective material**. This forms a strong reflective
covering that the author has **printed successfully without supports**, and it does two things at
once:

- **Concealment** — from outside, the reflective conical array hides the wearer's eyes.
- **Visibility** — from inside, the wearer sees out clearly, with excellent field of view.

**Preserve the eye geometry** (the conical-hole array) when you scale and steam the mask — that's the
part that makes it work, and it's why the print uses a reflective filament/resin and no supports.

## Wearing it — a bauta

This is a **bauta** (the Venetian mask with the jutting jawline), which makes it genuinely *wearable
for performance*. The projecting chin leaves the mouth clear, so **without taking it off** you can:

- speak into a **lavalier mic**,
- **drink** from a bottle of water,
- **eat** a protein bar or the like.

Full meals are pushing it — you *can*, but you'll want to **wash the mask right after**.

## Safety

- **Don't steam the mask while it's on your face** — heat-fit it off the face, then check the fit cold.
- Choose a **non-brittle, non-toxic** print material; avoid anything that shatters or off-gasses.
- **Sand or deburr** the eye openings and any sharp printed edges before wearing.
- Keep the **eye openings clear** and your field of view unobstructed.
- **Ventilate** during post-processing (sanding, solvent smoothing, painting).
- Adult supervision for minors. This is a costume piece — **not protective PPE**.

---

*Part of the [PoliePals](../universe.md) universe. Patent-pending project — see the
[README](../README.md). **No licence is granted by publication** — all rights reserved (see the
[LICENSE](../LICENSE)); printing one for yourself grants no copyright, design, trademark, or patent
right. **PoliePals®** is a registered trade mark of Cathal Ryan Hynes / P.I.G.M.I.E. Ltd.*
