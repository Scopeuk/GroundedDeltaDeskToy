$fs=0.1;
$fa=1;

baseDia = 100;
centerHoleDia = 75;
baseHeight = 3;
pinInset = 6;
pinDia = 7.5;
pinHeight = 6;
pinWasherDia = 10;
pinWasherHeight = 0.1;

difference(){
    cylinder(d = baseDia, h = baseHeight);
    cylinder(d = centerHoleDia, h = baseHeight);
}

module pin(){
    cylinder(d = pinWasherDia, h = baseHeight + pinWasherHeight);
    cylinder(d = pinDia, h = baseHeight + pinWasherHeight + pinHeight);
}

for(i=[0:120:360]){
    rotate([0,0,i]) translate([(baseDia/2)-pinInset,0,0]) pin();
}

