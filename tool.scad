include <params.scad>

$fs=0.1;
$fa=1;

baseDia = 40;
baseHeight = 3;
pinInset = 4;
pinHeight = 6;
pinWasherDia = pinDia*1.5;
pinWasherHeight = 0.1;


cylinder(d = baseDia, h = baseHeight);

module pin(){
    cylinder(d = pinWasherDia, h = baseHeight + pinWasherHeight);
    cylinder(d = pinDia, h = baseHeight + pinWasherHeight + pinHeight);
}

for(i=[0:120:360]){
    rotate([0,0,i]) translate([(baseDia/2)-pinInset,0,0]) pin();
}

