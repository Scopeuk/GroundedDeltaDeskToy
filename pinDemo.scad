use <Pin.scad>
$fs = 0.1;
$fa=1;


color("red") difference() {
    cylinder(d=10,h=8);
    translate([0,0,8]) pinMate();
}


color("blue") translate([0,0,10]) difference() {
    cylinder(d=10,h=5);
    translate([0,0,5]) pinClearence();
}

color("green") translate([0,0,25]) pin();