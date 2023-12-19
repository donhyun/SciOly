

$fn = 1000;
/*
difference() {
cylinder(50,50.5,50.5);
    translate([0,0,-10]){
        cylinder(80,15,15);
    }
    
    for ( i = [5:9:45]) {
        rotate_extrude(convexity = 10, $fn = 100)
        translate([52, i, 0])
        circle(r = 3,$fn = 100);

    }

    
    
    translate([-55,0,-5]){
        cube([110,110,110]);
        }
        
    translate([20,-30,-5]){
        cube([10,35,15]);
        }
        
    translate([-30,-30,-5]){
        cube([10,35,15]);
        }
}
*/
translate([120,0,0]){
    
    difference() {
cylinder(50,50.5,50.5);
    translate([0,0,-10]){
        cylinder(80,15,15);
    }
    
    for ( i = [5:9:45]) {
        rotate_extrude(convexity = 10, $fn = 100)
        translate([52, i, 0])
        circle(r = 3,$fn = 100);

    }

    
    
    translate([-55,-110,-5]){
        cube([110,110,110]);
        }

}
    
    
    translate([20,-30,0]){
        cube([10,30,10]);
        }
        
    translate([-30,-30,0]){
        cube([10,30,10]);
        }

    }
    
