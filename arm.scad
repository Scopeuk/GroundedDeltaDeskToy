include <params.scad>
// lower and upper arm are the same

centerToCenter = 25;
Thickness = 5;
Width = Thickness*3;

pinHeight = Thickness;

$fs=0.1;
$fa=1;

difference(){
    union(){
        hull(){
            cylinder(d=Width,h=Thickness);
            translate([centerToCenter,0,0]) cylinder(d=Width,h=Thickness);
        }
        cylinder(d=pinDia,h=pinHeight+Thickness);
    } 
    translate([centerToCenter,0,-Thickness]) cylinder(d=pinDia+pinClearenceVert,h=Thickness*3);
}