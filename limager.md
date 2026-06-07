# Limager — the perception regime

*The perception operating regime of the [Reality Kernel](reality_kernel/). Patent pending; all rights reserved.*

Limager runs the Reality Kernel to ask, of a scene, **"what is out there?"** It attunes the emitter–detector loop to
the scene and estimates structure from the physical responses — 3D geometry, material properties, and semantic labels. Rather than
capturing a static image, it *adapts its probes* to the scene; in some embodiments it optimises the **mutual
information** between scene variables and the convolution-bundle output.

Limager works across the full reactor-complexity spectrum. With a linear or identity reactor it is simply an active
sensor — forgery resistance is not the objective at that operating point — yet the same **convolution-bundle**
format, meters, and protocol-digest logging still apply, so a perception run is fully auditable and can share hardware
with verification and rendering.

See [`reality_kernel/`](reality_kernel/) for the authoritative description.
