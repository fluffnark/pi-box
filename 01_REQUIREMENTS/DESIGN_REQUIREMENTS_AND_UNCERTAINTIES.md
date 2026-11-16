# Requirements, scope and decisions (priority order)

## Final user decision — highest priority
1. E-paper panel **mounted on the outside of the lid** of the *existing* Apache 1800 protective case.
2. **No 3D printer. No 3D-printed bezel/tray.** Previous CAD/STLs are history/reference only.
3. Preference is a straightforward physical installation using tape or glue; prior recommendation: a suitable PP-compatible structural tape such as 3M VHB LSE rather than ordinary tape or superglue. **Bond has not been mechanically validated.**
4. Prefer inexpensive parts and already-owned components and fasteners. Clearly identify new purchases.
5. Keep the e-paper safe, make mounting removable or serviceable if feasible, protect display and FPC, preserve weather resistance as well as practical.
6. Cable must run from the exterior display to electronics already inside the case. The pass-through is **unsolved**, should not intersect the lid gasket/closure seam, and requires an engineered strain relief and seal.
7. The agent should continue design with practical 2D/CAD drawings, paper templates, or a cut-to-size protector that can be produced without 3D printing; local cutting service is permissible if cost-effective.

## Observed hardware / project goal
- Photo shows a functioning e-ink screen with a clock/alarm application, status and scroll/press control hints; dated Sunday March 08 2026 *on the photographed display* (not current local date).
- Photo shows RPi and attached board/wires within the open case. User has a 16mm ring-lit momentary button and rotary encoder with 20mm black knob from email order; two physical controls appear in the photo, but panel-mounted positions are not yet resolved.
- Factory case is PP, strongly ribbed, rubber perimeter seals and latches. Display lies landscape on outside lid with exposed FPC tail exiting bottom-center in latest photo.
- Existing black nylon M2.5 screw kit shown; separate metal fastener and wingnut kits shown; neither alone proves an attachment method suitable for unsupported e-ink glass.

## DO NOT do
- Do not assume old SCAD/STL files are fabrication-ready or approved. The user cannot print them.
- Do not place VHB or cyanoacrylate/superglue directly on active-area glass, rear bonded flex, FPC contacts, or fragile ePaper layers.
- Do not tighten fasteners directly through the glass; the display may have no safe screw holes.
- Do not squeeze the e-paper under a clear polycarbonate sheet. Use resilient spacing and edges/support outside active area.
- Do not run the ribbon through the case lid's main rubber gasket seam or pinch it under the latch.
- Do not drill/cut before inspecting underside of lid and rib structure and testing the cable bend and extension.
- Do not claim original factory IP65 persists after drilling/penetration without actual validation.
- Do not substitute old 50/100/250mm A-B (D) FPC cables for #4230 Type A without verified pin mapping.

## Dimensions: measured vs nominal vs guessed
- Apache 1800 **published exterior**: 9.25 x 7.5 x 4.375in (~234.95 x 190.50 x 111.13mm); published inside 8.125 x 5.625 x 3.75in. Not flat lid region.
- Photo contains tape measuring the physical display on the lid; no caliper measurements of the ePaper glass, tail, wall thickness, ribs or clearance have been entered into the project.
- Older V2 CAD **nominal** glass panel 170.2 x 111.2mm, viewing aperture 163.8 x 98.2mm; active view 163.2 x 97.72mm from DigiKey product listing. Physical size **must be verified**.
- Old V2 PRINTED prototype envelope: 189 x 121.5mm with M2.5 holes 178 x 100mm center spacing, 19mm wide x 9.5mm FPC relief, 174 x 105 x 1.5mm window. NOT a final adhesive-mount design or cut plan.
- Older V1 PRINTED prototype envelope: 190 x 132mm, now superseded.
- The actual available flat adhesive area around the panel is not measured; edge/rib/latch interference unknown.

## Current unanswered questions
1. Photograph/measuring underside of case lid with foam temporarily lifted, showing ribs, gasket, side walls; locate safe passage for 12mm-wide 24-pin flex (actual tail width to measure).
2. Measure glass envelope, display thickness, flat mounting zone, panel-to-rim distances, back of display (safe non-active areas), flex width, FPC exposed length, permissible bend radius.
3. Decide whether to mount via pre-cut protective polycarbonate plus peripheral PP-compatible adhesive, optional edge retention, or a thin purchased stock frame/corner retainers. Quantify shock loads and serviceability.
4. Decide if cover is needed: if so, anti-glare, scratch resistance, condensation/pressure equalization and pixel visibility concerns.
5. Design FPC opening and internal strain relief; position below panel or behind it without violating lid seal. Choose sealed method suitable for flat ribbon, not guessed round-cable gland.
6. Verify #4524 + #4230 + screen FPC + #4224 pin mapping end-to-end before power; test on bench before assembly. Determine if 250mm extension reaches through case lid across open/close cycles.
7. Decide power/controls: button and encoder positions on case; ensure sealed hardware feedthrough and wires do not interfere with display or foam.
8. Obtain retail purchase options/prices for reasonable quantities (short tape strips, cut-to-size polycarbonate), not industrial case rolls.
9. Develop reversible test fixture / dry fit before full adhesive cure and before cutting into shell.
