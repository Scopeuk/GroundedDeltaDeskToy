use <Pin.scad>
$fs=0.1;
$fa=1;

module supportRaw(){
    translate([0,-15,0]) difference(){ 
        cube([5,15,20]);
        translate([5,15/2,15]) rotate([0,90,0]) pinClearence();
    }
}
module supports(){
    translate([70/2,0,0]) supportRaw();
    translate([-70/2,0,0]) mirror([1,0,0]) supportRaw();
}

for(rot = [0:120:360]){
    rotate([0,0,rot]){
        translate([0,-20,0]) supports();
        rotate([0,0,90]) translate([0,-4,0]) cube([45,8,3]);
    }
    

}



//difference(){
//    cylinder(d=95,h=3);
//    translate([0,0,-1]) cylinder(d=85,h=6);
//}