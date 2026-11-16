// Apache 1800 + Adafruit #6396 7.5in e-paper | V2 PHOTO-FIT PROTOTYPE
// All dimensions millimeters. Screen placement/usable lid area are PHOTO ESTIMATES.
// The ribbon EXIT is now on the BOTTOM (-Y) of the landscape screen, as photographed.
// Part names: assembly, exploded, tray, bezel, window_template, fit_template, case_mock,
//             internal_feedthrough_PLACEHOLDER. Change part before exporting STLs.
// DO NOT cut the case using any placeholder shape; verify lid interior first.
$fn=52;
part="assembly";

// Source: Adafruit #6396 physical glass size is nominal/reference; measure your own display.
panel_w=170.2;
panel_h=111.2;
panel_t=1.25;
active_w=163.2;
active_h=97.72;

// Narrowed from 190 x 132 mm to stay within photograph's approx flat lid area.
frame_w=189;
frame_h=121.5;
frame_rad=6;
tray_t=3.5;
bezel_t=3.0;
panel_floor=1.5;
pocket_clear=0.65;
view_w=163.8;
view_h=98.2;
view_offset_y=0;
window_w=174;
window_h=105;
window_offset_y=2;
window_t=1.5;
window_rebate_depth=1.7;
bolt_dx=89;
bolt_dy=50;
bolt_clear_d=3.0; // fit-check a 2.5mm screw in your printer first
fpc_relief_w=19;
fpc_relief_inset=9.5; // how far notch enters frame from its lower edge

// Illustration only: lid's true flat dimensions and ribs remain unmeasured.
mock_flat_lid_w=199;
mock_flat_lid_h=128;
mock_case_w=218;
mock_case_h=160;

module rounded2d(w,h,r=2){
    hull() for(x=[-w/2+r,w/2-r], y=[-h/2+r,h/2-r])
        translate([x,y]) circle(r=r);
}
module plate(w,h,t,r=2){linear_extrude(height=t) rounded2d(w,h,r);}
module holes(){for(x=[-bolt_dx,bolt_dx],y=[-bolt_dy,bolt_dy])translate([x,y])children();}
module ribbon_notch(t){
    // Open lower edge in BOTH printed parts; keeps the FPC free of the printed bezel.
    translate([0,-frame_h/2+fpc_relief_inset/2,-0.15])
        linear_extrude(height=t+0.3)
            rounded2d(fpc_relief_w,fpc_relief_inset+1.0,1.0);
}
module tray(){
    difference(){
        plate(frame_w,frame_h,tray_t,frame_rad);
        // Shallow recess; printed tray supports panel around its nonactive edges.
        translate([0,0,panel_floor])
            linear_extrude(height=tray_t-panel_floor+0.4)
                rounded2d(panel_w+pocket_clear*2,panel_h+pocket_clear*2,1.0);
        ribbon_notch(tray_t);
        // Match four bezel screws. If through-lid mounting is chosen, the shell needs
        // separately inspected and marked holes. A sealed backing washer/nut is required.
        holes() translate([0,0,-0.1]) cylinder(h=tray_t+0.2,d=bolt_clear_d);
    }
}
module bezel(){
    difference(){
        plate(frame_w,frame_h,bezel_t,frame_rad);
        // View aperture centred over nominal 163.2 x 97.72 active image.
        translate([0,view_offset_y,-.2])
            linear_extrude(height=bezel_t+.4) rounded2d(view_w,view_h,1.0);
        // Window recess: installed with clearance, supported all around but below view aperture.
        translate([0,window_offset_y,-.1])
            linear_extrude(height=window_rebate_depth+.1)
                rounded2d(window_w+.6,window_h+.6,1.0);
        ribbon_notch(bezel_t);
        holes() translate([0,0,-0.1]) cylinder(h=bezel_t+0.2,d=bolt_clear_d);
    }
}
module window_shape(){translate([0,window_offset_y,0]) plate(window_w,window_h,window_t,1);}
module screen(){plate(panel_w,panel_h,panel_t,0.8);}
module case_mock(){
    color([0.11,0.125,0.14])
        translate([0,0,-17]) plate(mock_case_w,mock_case_h,15,12);
    color([0.18,0.20,0.22])
        translate([0,0,-2]) plate(mock_flat_lid_w,mock_flat_lid_h,2.0,7);
    color([0.085,0.09,0.10])
        translate([0,-mock_case_h/2,-15])
            for(x=[-70,70]) translate([x,0,0]) cube([28,15,20],center=true);
}
module labels(){
    color([0.14,0.14,0.14])
    translate([-66,10,panel_t+.03]) linear_extrude(.06)
       text("11:07",size=25,font="Liberation Sans:style=Bold");
}
module flex(explode=0){
    // The flex tail is depicted unbent (safe position, outside tray).
    color([0.83,0.55,0.18])
        translate([0,-panel_h/2-9,panel_floor+panel_t+explode*.45])
            cube([12.5,21,0.3],center=true);
}
module assembly(explode=0){
    case_mock();
    color([0.12,0.14,0.17]) tray();
    color([0.98,0.98,0.94])
        translate([0,0,panel_floor+explode*.34]) screen();
    translate([0,0,panel_floor+explode*.34]) labels();
    flex(explode);
    color([0.6,0.84,0.92,.45])
        translate([0,0,tray_t+.1+explode*.67]) window_shape();
    color([0.07,0.08,0.095])
        translate([0,0,tray_t+explode]) bezel();
}
if(part=="tray") tray();
else if(part=="bezel") bezel();
else if(part=="window_template") linear_extrude(.4) translate([0,window_offset_y]) rounded2d(window_w,window_h,1);
else if(part=="fit_template"){
    // 0.5mm proof-fit outline / drill locations: do NOT drill until checking inside lid.
    difference(){plate(frame_w,frame_h,.5,frame_rad);
        translate([0,0,-.1]) plate(panel_w,panel_h,.7,.8);
        ribbon_notch(.5);
        holes() translate([0,0,-.1]) cylinder(h=.7,d=bolt_clear_d);
    }
}
else if(part=="case_mock") case_mock();
else if(part=="internal_feedthrough_PLACEHOLDER"){
    // NOT a real drill template. The cable must be routed UNDER the panel only after
    // confirming available slack, a gentle bend radius, and clear lid interior.
    translate([0,-49,0]) plate(21,10,.3,2);
}
else if(part=="exploded") assembly(14);
else assembly(0);
