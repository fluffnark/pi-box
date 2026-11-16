Apache 1800 + Adafruit 7.5-inch UC8179 ePaper mounting concept
Nov 2026 | Prototype / verify before fabrication

FILES
  eink_apache1800_mount.scad   Editable parametric OpenSCAD project
  mount_tray.stl              Print the rear/recessed mounting tray
  protective_bezel.stl        Print front protective bezel
  concept_3d.png              Assembled visual mock-up, generic case geometry
  concept_exploded.png        Exploded 3D assembly visual
  parts_list.xlsx             Parts, prices, on-hand vs buy, build notes

DESIGN INTENT
  - Bare ePaper module in recess of tray, 0.85mm material beneath it.
  - Thin 0.060in (1.5mm) polycarbonate window captured by bezel.
  - Four nylon M2.5 screws for bezel-to-tray joint, using nuts in tray.
  - Separate four optional tray-to-case M2.5 holes with recessed heads.
  - Ribbon slot on the hinge-facing edge, not a confirmed exact feedthrough.
  - Cable runs from display through Adafruit #4524 + Type A #4230 to #4224 breakout and Pi.

CRITICAL BEFORE PRINTING OR DRILLING
  1. Measure actual panel envelope, active area, FPC tail exit and minimum safe bend.
  2. Measure available flat zone and wall/rib thickness of the Apache 1800 lid.
  3. Verify end-to-end 24-pin electrical orientation before applying power.
  4. Test bezel as a 1-2 layer proof before committing a full print.
  5. NEVER drill or overtighten the ePaper glass. Use compliant support.
  6. All new cable/bolt holes compromise factory case IP65 protection; seal and test.
  7. Leave sufficient cable slack/strain relief for repeated opening of the hinge.
  8. The exact internal shapes and latch/hinge hardware are illustrative, not survey CAD.

Open in OpenSCAD and change part='tray'/'bezel'/'assembled'/'exploded' for separate exports.
All mechanical dimensions in millimeters. Print PETG or ASA; trial print first.
