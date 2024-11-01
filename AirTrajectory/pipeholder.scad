

difference(){
    block();
    translate([30,0,40]){
        rotate([0,90,0]){
            cylinder(100, 24.2, 24.2, $fn=100);
        }
    }
}

module block(){
    intersection(){
        translate([90,-35,0]){
            cube([40,70,70]);
        }
        cylinder(100, 254/2, 254/2, $fn=100);
    }
}

