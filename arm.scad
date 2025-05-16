include <params.scad>
use <Pin.scad>
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
    } 
    translate([centerToCenter,0,Thickness]) pinMate();
    translate([0,0,Thickness]) pinClearence();
}