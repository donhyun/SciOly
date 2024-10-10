
difference(){
cube([100,10,8]);

translate([95,30,4]){
    rotate([90,0,0]){
        cylinder(40,1.5,1.5, $fn=20);
    }
}
}

rotate([0,45,0]){
cube([10,10,2]);
}