include <params.scad>
use <Pin.scad>

$fs=0.1;
$fa=1;

diskDia = 10;
diskThickness = 5;
plateThickness = 5;
centerToCenter = 12;
pinLength = 5;
translate([0,0,diskDia/2]) rotate([0,90,0]) union(){
	difference(){
        union(){
            hull(){
                //base shape
                translate([-diskDia/2,0,0])cube([diskDia,0.1,diskThickness]);
                translate([0,centerToCenter,0]) cylinder(d=diskDia,h=diskThickness);
            }


        translate([diskDia/2,diskDia/2,diskThickness])
        {
            PivotHeight = 7.5;
            PivotOff = 10;
            difference(){
                hull(){
                    translate([0,-PivotOff,PivotHeight]) rotate([0,-90,0])cylinder(h=plateThickness,d=diskDia);
                    translate([-plateThickness,-10/2,-0.1]) cube([plateThickness,diskDia,0.1]);
                }
                translate([0,-PivotOff,PivotHeight]) rotate([0,90,0]) pinClearence();
            }
        }
        }
    
		translate([0,centerToCenter,0]) rotate([0,180,0]) pinMate();
	}
}
