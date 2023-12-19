$fn=1000;

chassis();

/* brake bar */
translate([50,-50,0]){
    cube([20,100,20]);
}

translate([-93,-22.5,0]){
    /* turn angle */
    rotate([0,0,3]){  
    translate([0,20,0]){
        rotate([0,0,180]){
            chassis();
            }
        }
    }
}

module chassisframe(){
    
    /* cross bar */
    translate([-30,-50,0]){
    cube([20,100,40]);
    }
    
    
    /* side */
    translate([-50,50,0]){
        cube([200,20,40]);
    }
    
    /* side */
    translate([-50,-50,0]){
        cube([200,20,40]);
    }

}

module chassis(){
    translate([0,-10,0]){
        difference(){
            chassisframe();
            
            /* axle hole */
            translate([80,80,20]){
                rotate([90,0,0]){
                    cylinder(200, 14/2, 14/2);
                }
            }
            
            /* bearing seat */
            translate([80,80,20]){
                rotate([90,0,0]){
                    cylinder(20, 21/2, 21/2);
                }
            }
            translate([80,-40,20]){
                rotate([90,0,0]){
                    cylinder(20, 21/2, 21/2);
                }
            }
        }
    }
}



