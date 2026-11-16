## Purchase update — 2026-11-15

Gmail order confirmations were checked directly after this handoff was assembled.
Adafruit #4524 and #4230 are already purchased (Nov 15), along with #5019 foam tape.
Do not reorder them; delivery is not established. Generic #5019 tape is not verified
as suitable for polypropylene or as a substitute for the proposed LSE mounting tape.
A Jan 17 purchase also includes E-Ink Bonnet #6418 and headers #2223/#1979.
Both #6418 and Breakout Friend #4224 were purchased; which is installed remains unknown.
Jan 9 purchases include RTC #4282, USB microphone #3367 and swivel adapter #974.
See `04_PARTS_AND_PURCHASING/EMAIL_VERIFIED_PURCHASES.csv` for all 30 purchase lines.
Only product/date/quantity/line-price facts are stored; raw messages and personal details are excluded.
The original ZIP and superseded files retain their original content and may contain stale buy lists.

# SOMA AGENT — START HERE

**Project:** Mount a working 7.5-inch Adafruit #6396 bare UC8179 monochrome ePaper display externally on the lid of an Apache 1800 weatherproof protective case containing a Raspberry Pi and eInk breakout/controller.

**CURRENT USER REQUIREMENT (OVERRIDES OLD CAD):** The user **does not have a 3D printer** and wants an actual purchasable, tape/adhesive (or simple direct-lid) mounting solution, not a printed tray or bezel. Existing prior V1/V2 CAD/STLs are **historical, superseded reference only**.

**What is in this handoff**
- `01_REQUIREMENTS`: complete intent, confirmed specs, guessed dimensions, unresolved decisions, safety/functional constraints, no-printer concept.
- `02_PHOTOS_ORIGINAL`: ten original user photos, readable manifest, contact sheet. The newest photo includes a ruler and FPC exit at the **bottom center of the panel**.
- `03_EXISTING_DESIGN_SUPERSEDED`: old parametric OpenSCAD, STL, render, notes and XLSX BOM files, with V1/V2 original zip bundles; geometry is not a fit-checked no-print solution.
- `04_PARTS_AND_PURCHASING`: sanitized original Adafruit order reconstruction, actionable no-print parts list, historical workbooks. NO personally identifying account, delivery, or billing data are included.
- `05_REFERENCE_LINKS`: manufacturer/vendor web URLs, current verification notes.
- `06_NO_PRINTER_TEMPLATES`: 1:1 layout/outline SVG reference, NOT a cut or drill guide.
- `07_AGENT_TASKS`: next-agent work plan and copy/paste assignment.

**Important design status:** The screen is shown working; the panel fits on the exterior lid visually. The FPC tail hangs down bottom-center near the case edge, and it MUST NOT be routed through the gasket seam. The underside lid ribs, usable flat bonding area, tail safe bend radius and cable feedthrough are not yet measured. Do NOT order an unvalidated seal or drill the shell.

**What the user already appears to own:** Apache 1800 case, display #6396, Raspberry Pi 3 Model B, Adafruit eInk Breakout Friend #4224, black M2.5 screw kit, white A-B 24-pin ribbon cables in 50/100/250mm bought from Adafruit, rotary encoder + 20mm knob, white ring pushbutton, electrical wiring, extra metal fasteners. Purchase history proves purchase but not necessarily current physical possession for each item; photographs confirm several.

**Still needed/candidate parts:** #4524 24-pin FPC extender and #4230 Type A 25cm extension ($0.95 + $1.50 at handoff lookup); small quantity of 3M VHB LSE-series tape; cut-to-size polycarbonate protector; thin soft support/gasket; and still-unspecified safe sealed FPC feedthrough/strain relief. Vendor links/pricing in `04_PARTS_AND_PURCHASING/ACTIONABLE_BOM_NO_PRINTER.csv`.

**Critical electrical distinction:** Old purchased #6384/#6385/#6386 cables are A-B (D)-type, with contact orientation/pin path different from #4230 Type A. Adafruit #4524 reverses connector pin numbering, pin 1->24. Verify continuity/pin mapping before connecting/powering.

**Historical model numbers:** prior V2 frame 189 x 121.5mm, nominal glass 170.2 x 111.2mm, bottom-center 19mm relief. These numbers are *not* license to print, cut acrylic/polycarbonate, or drill. Product active viewing area is listed as 163.2 x 97.72mm by DigiKey; exterior case measurements from Harbor Freight are 9.25 x 7.5 x 4.375in, not usable flat lid.

**Immediate agent deliverables:** (1) choose a feasible no-printer mechanical retention concept with serviceability and risk discussion; (2) use photos and request minimum missing measurements only when unavoidable; (3) 2D layout and real-size cardboard/hand-cut/shop-cut template, including robust tape land; (4) safe cable-feedthrough design after underside photo; (5) revised buy-only parts BOM with links/prices and ownership checks; (6) staged dry-fit/test/install directions.

This dossier was assembled 2026-11-15 from the user conversation, original uploaded photos, a Jan 8 2026 Adafruit order found in the user's Gmail (sanitized here), previous assistant's concept files and manufacturer product pages. No access to the user's inbox, local files, passwords or account is granted to the successor agent by this ZIP.
