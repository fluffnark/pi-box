# No-printer mounting direction — concept, not final installation drawing

**Design intent**: install the 7.5-inch bare e-paper display on the outside of the polypropylene Apache 1800 lid, with a transparent removable protective cover and minimal obstruction around the useful image area.

## Candidate stack

Exterior -> interior:
1. Clear **pre-cut polycarbonate cover** (roughly 1.0–1.5mm sheet, final cut size depends on measured case flat area and needed bonded border). The historical 174x105mm window used for a *3D printed bezel* is **not** necessarily adequate as a no-print adhesive-cover blank, because it is narrower than the overall glass in one axis and lacks a verified bonding margin.
2. Perimeter compliant spacers/gasket above a protected supporting region, with sufficient engineered gap over screen surface; no compression on glass active area.
3. Bare e-paper panel, supported only in mechanically acceptable areas; no direct high-strength adhesive on fragile screen/FPC. Retention under vibration/drop needs positive capture or proven support; simply taping a cover over a loose display is not approved.
4. Candidate 3M VHB **LSE-110WF** tape on **polypropylene case surface** only after controlled adhesion test and flat-border checks. On severely ribbed lid a custom purchased frame/pad or mechanical retention may be needed; adhesive cannot bridge unsupported ribs.
5. Lid wall (with separately engineered, sealed FPC penetration), wiring to eInk breakout and Raspberry Pi inside.

## Special design concerns
- E-paper front/back layers can crack or delaminate with point pressure or rigid cover contact; preserve flatness and separate load path.
- A durable field installation needs splash/rain, thermal cycling and handling considerations, not just indoor tape adhesion.
- A flat 24-pin FPC needs suitable flex radius and strain relief. Do not route through seam or pull against bonded ePaper tail. It may require a shallow routing channel and a dedicated sealed entry.
- Once tape contacts PP it may have high bond strength and removal risk; design a service path for replacing display or cable without forcing the glass.
- Test on scrap tape/polycarbonate first. Document substrate prep and vendor's dwell/cure recommendations.
- A print-at-100%-scale 2D outline is supplied as a **dimensional reference only**; it does not establish lid holes, pane cutout, gasket geometry, or weatherproofing.

## Candidate fabrication methods without a printer
- Purchase pre-cut polycarbonate (or have local plastics shop cut/finish rounded corners); avoid brittle acrylic if impacts likely.
- Cut gasket/foam with knife after cardboard pattern; verify thickness and gentle compression.
- Cut paper/cardboard dry-fit envelope for panel and possible cover; physically mark rib line/flat adhesive pads.
- Add commercially available low-profile edge clips/retainers only if compatible with case and thickness; any hardware holes need separate sealing.

**Risk status**: no-printer option is a conceptual approach, not validated. Prior assistant's statement 'use tape' was a material recommendation, not proof tape-only will safely hold the display under drops/weather.
