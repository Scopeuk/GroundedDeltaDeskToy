use <Pin.scad>
$fs = 0.1;
$fa=1;

partHeight = 70;
flatLength = partHeight - 25;
endInset = (partHeight-flatLength)/2;
partDia = 10;
pinsep = 20;
center = partHeight/2;

rotate([90,0,0a]) difference() {
    cylinder(d=partDia,h=partHeight);
    translate([0,0,partHeight]) pinMate();
    rotate([0,180,0]) pinMate();
    translate([-partDia/2,0,endInset]) cube([partDia,partDia,flatLength]);
    translate([0,-partDia/2,center-pinsep/2]) rotate([90,0,0]) pinMate();
        translate([0,-partDia/2,center+pinsep/2]) rotate([90,0,0]) pinMate();
}

