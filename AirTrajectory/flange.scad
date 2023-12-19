$fn=1000;



difference(){
    flange();
    
    // hole for 4 inch pipe
    translate([0,0,-5]){
        cylinder(160,58,58);
    }
    
    // hole for horizontal ping pong pipe
    translate([0,0,70]){
rotate([0,90,0]){
cylinder(100, 24.2, 24.2);
}
}

//bolts
translate([60,60,-5])
cylinder(50,3,3);

translate([-60,60,-5])
cylinder(50,3,3);

translate([60,-60,-5])
cylinder(50,3,3);

translate([-60,-60,-5])
cylinder(50,3,3);
}


module flange(){

/* main tube */
cylinder(150,63,63);
/*base  20cm diameter is limit of 3d printer */
cylinder(20,100,100);
    
/* side hole cube */
translate([55,-30,0])
cube([40,60,100]);
}

