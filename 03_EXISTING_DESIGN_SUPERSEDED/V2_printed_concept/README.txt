APACHE 1800 + ADAFRUIT #6396 E-PAPER DISPLAY: PHOTO-FIT V2
Created November 2026. Metric dimensions (mm). NON-FABRICATION-READY PROTOTYPE.

WHAT CHANGED FROM THE FIRST MODEL
- Rear FPC exit corrected: photographed flex leaves the bottom-center of the panel.
- Slimmed frame from 190x132mm to 189x121.5mm; the photograph shows tight clearances at the top and lower edge of the lid.
- Updated front bezel, recessed tray, polycarbonate window cut size, and four M2.5 hole locations.
- NO CASE DRILL/CABLE ROUTE specified: rear/inside of lid must be inspected first.

CONTENTS
- apache1800_eink_photo_fit_v2.scad : Editable parametric CAD (OpenSCAD)
- tray_v2.stl, bezel_v2.stl : printable CAD proof of fit, without feedthrough through case
- fit_template_v2.stl : only 0.5mm thick, use as paper/plastic gauge before full print
- cad_3d_v2.png, cad_exploded_v2.png : illustrative renders, case mock is not traced/surveyed
- photo_fit_overlay_v2.png : ruler-photo overlay estimating the 189x121.5 frame
- eink_mount_bom_v2.xlsx : 3-sheet cost/geometry/assembly workbook

FRAME DIMENSIONS (UNVERIFIED)
- nominal 7.5in panel glass 170.2 x 111.2mm; opening 163.8 x 98.2mm
- printed frame 189 x 121.5mm; corner radius 6mm; M2.5 hole center spacing 178 x 100mm
- bottom-center FPC relief width 19mm and depth 9.5mm, on BOTH printed parts
- window cut blank 174 x 105 x 1.5mm, offset 2mm toward top of frame
- tray thickness 3.5mm, bezel thickness 3mm

WARNING: THIS DOES NOT PROVIDE A SAFE OR SEALED ELECTRICAL PASSAGE INTO THE LID.
The display FPC hangs from the bottom-center in the photos. The model only avoids
pinching it with printed parts. Do not feed the cable through the lid's closure
seam, clamp it under a gasket, or force a sharp U-bend. Inspect underside of lid
and confirm available flex length and minimum bend radius before machining a
real case feedthrough. The placeholder silhouette in the SCAD source is NOT a
case drilling guide. Any case drilling invalidates original weatherproof rating
unless the completed system is sealed and tested.

BEFORE CUTTING:
1. Print or cut a 1:1 outline of frame, verify clearance to lid ribs/top edge.
2. Measure actual panel width,height,thickness, visible area and flex offset.
3. Photograph underside of closed-case lid with existing foam lifted so ribs,
   lip and original sealing gasket are visible. Confirm bolt/nut zones.
4. Establish FPC route and strain relief with case opening fully, without flex
   bending against closure edge. Only then design cable cutout and sealing.
5. Compare Adafruit extender #4524 with Type A #4230; the purchased A-B D-type
   cables #6384/6385/6386 are not automatic substitutes.
6. Test 1.5mm polycarbonate window fit, foam pads, spacer stack and screw length.

OPENSCAD: Open the .scad file and change `part="assembly";` to `part="tray";`
or `part="bezel";` or `part="fit_template";`. Press F6 then File > Export > STL.

Prices are supplier listings and estimates, before shipping/tax; see XLSX.
