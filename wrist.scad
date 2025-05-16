include <params.scad>
use <pin.scad>

$fs=0.1;
$fa=1;

diskDia = 10;
diskThickness = 3;
plateThickness = 3;
centerToCenter = 12;
pinLength = 5;
rotate([0,-90,0]) union(){
	difference(){
		hull(){
			//base shape
			translate([-diskDia/2,0,0])cube([diskDia,0.1,diskThickness]);
			translate([0,centerToCenter,0]) cylinder(d=diskDia,h=diskThickness);
		}
		translate([0,centerToCenter,diskThickness]) pinMate();
	}


	translate([-(diskDia/2-plateThickness),diskDia/2,diskThickness]){
		PivotHeight = 7.5;
		PivotOff = 10;
		difference(){
			hull(){
				translate([0,-PivotOff,PivotHeight]) rotate([0,-90,0])cylinder(h=plateThickness,d=10);
				translate([-plateThickness,-10/2,-0.1]) cube([plateThickness,10,0.1]);
			}
			translate([0,-PivotOff,PivotHeight]) rotate([0,90,0]) pinClearence();
		}
	}
}