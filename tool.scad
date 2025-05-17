include <params.scad>
use <Pin.scad>

$fs=0.1;
$fa=1;

baseDia = 40;
baseHeight = 5;
pinInset = 4;
pinHeight = 6;
pinWasherDia = pinDia*1.5;
pinWasherHeight = 0.1;

difference(){
    cylinder(d = baseDia, h = baseHeight);

    for(i=[0:120:360]){
        rotate([0,0,i]) translate([(baseDia/2)-pinInset,0,baseHeight]) pinClearence();
    }
}

