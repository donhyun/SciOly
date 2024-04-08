$fn=100;

difference(){
cylinder (50,19.8,19.8);
translate([6,0,-5]){
    cylinder(80,27/2, 27/2);
    }
translate([-30,0,25]){
    rotate([90,0,90]){
        cylinder(40,15,15);
    }
}

translate([0,0,25]){
    rotate([90,0,90]){
        cylinder(40,5,5);
    }
}
}

