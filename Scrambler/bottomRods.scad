


cube([150,50,5]);
translate([35,25,0]){
    rodholder();
}

translate([115,25,0]){
    rodholder();
}

translate([75,25,0]){
    difference(){
        rodholder();
        cylinder(60, 17, 17, $fn=100);
    }
    
}


translate([-50,0,0]){
    difference(){
    cube([50,50,50]);
        translate([-5,25,25]){
            rotate([0,90,0]){
                cylinder(60, 16.7, 16.7, $fn=100);
            }
        }
    }
}

translate([150,0,0]){
    difference(){
    cube([45,50,50]);
        translate([-5,25,25]){
            rotate([0,90,0]){
                cylinder(60, 16.7, 16.7, $fn=100);
            }
        }
    }
}

module rodholder(){
    difference(){
        cylinder(50, 20, 20);
        translate([0,0,-5]){
            cylinder(60, 16.7, 16.7, $fn=100);
        }
    }
}