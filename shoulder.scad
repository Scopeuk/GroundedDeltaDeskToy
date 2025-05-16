include <params.scad>
use <pin.scad>

$fs=0.1;
$fa=1;

diskDia = 25;
diskThickness = 10;
plateThickness = 5;

difference(){
    //base shape
    cylinder(d=diskDia,h=diskThickness);
    difference(){
        //bearing
        cylinder(d=22.3,h=7.5);
        difference(){
            translate([0,0,7]) cylinder(d=22.5,h=0.5);
            translate([-25,-6,7]) cube([50,12,0.5]);
        }
    }
}


translate([0,0,diskThickness]){
	PivotHeight = 7.5;
	difference(){
		hull(){
			translate([0,0,PivotHeight]) rotate([0,90,0])cylinder(h=plateThickness,d=10);
			translate([0,-10/2,-0.1]) cube([plateThickness,10,0.1]);
		}
		translate([0,0,PivotHeight]) rotate([0,-90,0]) pinMate();
	}
}



