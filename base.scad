use <Pin.scad>
$fs=0.1;
$fa=1;


for(i=[0:120:360]){
    rotate([0,0,i]) translate([40,0,20/2]) { 
    difference(){
        translate([0,70/2-15/2,0])cube([15,15,20],center=true);
        cube([15,15,20],center=true);
        translate([0,70/2,2]) rotate([-90,0,0]) pinMate();
    }
    difference(){
        translate([0,-(70/2-15/2),0])cube([15,15,20],center=true);
        cube([15,15,20],center=true);
        translate([0,-70/2,2]) rotate([90,0,0]) pinMate();
    }
    }
}
difference(){
hull(){
for(i=[0:120:360]){
    rotate([0,0,i]) translate([40,0,3/2])  cube([15,70,3],center=true);
}
}
hull(){
for(i=[0:120:360]){
    rotate([0,0,i]) translate([25,0,2])  cube([15,70,6],center=true);
}
}
}

