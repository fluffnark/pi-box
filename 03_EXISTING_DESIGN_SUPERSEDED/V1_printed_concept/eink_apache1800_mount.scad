// Apache 1800 + Adafruit 7.5" e-paper exterior lid mounting concept
// All values millimeters. PROTOTYPE: check dimensions, fit and ribbon path before fabrication.
// Open this file in OpenSCAD. Set `part` below to: exploded, assembled, tray, bezel,
// window, case, drill_template, screen. For a printable STL, export tray and bezel separately.
// Design assumes a panel envelope 170.2 x 111.2 x 1.25 mm from UC8179-family datasheets.
// Confirm your actual #6396 panel, FPC tail direction and Apache lid contours.
$fn = 60;
part = "exploded";

case_w = 235;      // Apache 1800 approximate outer width (9-1/4 in)
case_h = 190.5;    // approximate outer depth (7-1/2 in)
case_depth = 111.1; // nominal overall height; simplified model only

panel_w = 170.2;
panel_h = 111.2;
panel_thickness = 1.25;
active_w = 163.2;
active_h = 97.72;

mount_w = 190;
mount_h = 132;
corner_r = 8;
tray_thick = 3.0;
panel_floor = 0.85;        // bottom thickness of display recess
pocket_w = panel_w + 1.1;
pocket_h = panel_h + 1.1;
bezel_thick = 4.0;
view_w = 164.0;           // active area with ~0.4mm margin per side
view_h = 98.5;
window_w = 175;
window_h = 115.5;
window_thick = 1.5;     // 0.060" polycarbonate nominal
window_fit = 0.5;       // total clearance across window width/height
bezel_rebate_depth = 1.7;
mount_hole_d = 2.9;      // M2.5 screw clearance, adjust for printer
hole_x = 90;
hole_y = 61;
nut_pocket_d = 5.7;     // M2.5 hex-nut access from back of tray
slot_w = 18;
slot_h = 10;
slot_y = 58.7;         // hinge-facing edge; CHECK FPC tail exit location!

module rounded_2d(w,h,r) {
    hull() for (x=[-w/2+r,w/2-r], y=[-h/2+r,h/2-r])
        translate([x,y]) circle(r=r);
}
module at_holes() {
    for (x=[-hole_x,hole_x], y=[-hole_y,hole_y])
        translate([x,y,0]) children();
}
module plate(w,h,t,r=corner_r){
    linear_extrude(height=t) rounded_2d(w,h,r);
}
module tray(){
    difference(){
        plate(mount_w,mount_h,tray_thick);
        // Flat-bottom recess supports the glass panel; flexible gasket tape is optional.
        translate([0,0,panel_floor])
            linear_extrude(height=tray_thick-panel_floor+0.2)
                rounded_2d(pocket_w,pocket_h,1.0);
        // Cable pass-through: drill/smooth the corresponding slot in the CASE LID separately.
        // The cut joins the pocket at the hinge-facing (+Y) edge, not the latched edge.
        translate([0,slot_y,-0.1])
            linear_extrude(height=tray_thick+0.2)
                rounded_2d(slot_w,slot_h,2);
        // Bezel through-bolts; not fasteners through the case lid.
        at_holes() translate([0,0,-0.1]) cylinder(d=mount_hole_d,h=tray_thick+0.2);
        // Captive M2.5 nylon nut relief pockets on tray underside.
        at_holes() translate([0,0,-0.1]) cylinder(d=nut_pocket_d,h=2.1,$fn=6);
    }
}
module bezel(){
    difference(){
        plate(mount_w,mount_h,bezel_thick);
        // Main viewing opening, leaves at least ~3 mm of glass-panel rim captured.
        translate([0,0,-0.1])
            linear_extrude(height=bezel_thick+0.2)
                rounded_2d(view_w,view_h,1.0);
        // Underside rebate traps a loose-cut polycarbonate protection window.
        translate([0,0,-0.1])
            linear_extrude(height=bezel_rebate_depth+0.1)
                rounded_2d(window_w+window_fit,window_h+window_fit,1.0);
        at_holes() translate([0,0,-0.1]) cylinder(d=mount_hole_d,h=bezel_thick+0.2);
    }
}
module window(){
    plate(window_w,window_h,window_thick,1.0);
}
module screen(){
    color([0.89,0.89,0.86]) plate(panel_w,panel_h,panel_thickness,1);
}
module case_mock(){
    // Envelope only; NOT a replacement for measuring the curved polypropylene lid.
    color([0.12,0.13,0.15])
        translate([0,0,-case_depth]) plate(case_w,case_h,case_depth,16);
    // hinge-side legend
    color([0.26,0.27,0.30])
        for (x=[-80,80]) translate([x,case_h/2+3,-17]) cube([45,12,13],center=true);
    // latch-side blocks
    color([0.18,0.19,0.2])
        for (x=[-77,77]) translate([x,-case_h/2-3,-15]) cube([30,12,19],center=true);
}
module panel_gfx(){
    // Visual text only, not engraved/printed; shows screen orientation.
    color([0.09,0.09,0.09]) translate([-62,-6,1.8])
        linear_extrude(0.05) text("11:07",size=27,font="Liberation Sans:style=Bold");
    color([0.15,0.15,0.15]) translate([-57,-23,1.8])
        linear_extrude(0.05) text("Sunday  |  ePaper",size=6,font="Liberation Sans");
}
module assembly(explode=0){
    case_mock();
    color([0.13,0.15,0.17]) translate([0,0,explode*0.2]) tray();
    translate([0,0,panel_floor+explode*0.40]) {
        screen(); panel_gfx();
    }
    color([0.62,0.85,0.92,0.28])
        translate([0,0,tray_thick+explode*0.60]) window();
    color([0.07,0.075,0.08])
        translate([0,0,tray_thick+explode]) bezel();
    // Schematic flex tail, not shaped to an exact cable-length curve.
    color([0.75,0.49,0.10]) translate([0,60,tray_thick+explode*.40]) cube([12,30,.25],center=true);
}
if(part == "tray") tray();
else if(part == "bezel") bezel();
else if(part == "window") window();
else if(part == "case") case_mock();
else if(part == "screen") screen();
else if(part == "assembled") assembly(0);
else if(part == "exploded") assembly(13);
else if(part == "drill_template") {
   // CAUTION: slot only, not screw holes; no holes in glass.
   linear_extrude(0.3) translate([0,slot_y]) rounded_2d(slot_w,slot_h,2);
}
