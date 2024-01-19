pusher2();

module pusher2(){
    difference(){
    pusher();
    translate([23, -60, -10]){
        cube([26, 60, 100]);
    }
    
    translate([150, -60, -10]){
        cube([26, 60, 100]);
    }
    
    translate([23, 30, -10]){
        cube([26, 60, 100]);
    }
    
    translate([150, 30, -10]){
        cube([26, 60, 100]);
    }
       translate([0,60,25]){
        rotate([0,90,0]){
        cylinder(200, 4, 4, $fn=100);
        }
    }
    
    translate([0,-30,25]){
        rotate([0,90,0]){
        cylinder(200, 4, 4, $fn=100);
        }
    }
    
    }
    
 
    
    /*
    translate([24,-30,30]){
        wheel();
    }
    
    translate([24,60,30]){
        wheel();
    }
        
    translate([151,-30,30]){
        wheel();
    }
    
    translate([151,60,30]){
        wheel();
    }
    */
    
    }
module pusher(){
        /*
        translate([10,-70,0]){
            cube([180,150,5]);
        }
        */
        translate([10,-70,0]){
            cube([180,5,100]);
        }
    
        translate([18,-70,0]){
            cube([5,150,35]);
        }
        
        translate([176,-70,0]){
            cube([5,150,35]);
        }
        
        translate([50,-70,0]){
            cube([5,150,35]);
        }
        
        translate([145,-70,0]){
            cube([5,150,35]);
        }
        
        /*
        translate([49,40,0]){
            cube([5,40,40]);
        }
        
        translate([145,40,0]){
            cube([5,40,40]);
        }
        */
        translate([50,-5,0]){
        difference(){
        cube([100, 30, 50]);
        translate([16, -2, 20]){
            cube([20, 35, 35]);
        }
        translate([64, -2, 20]){
            cube([20, 35, 35]);
        }
        translate([-5,15,40]){
            rotate([0,90,0]){
                cylinder(150, 5, 5);
            }
        }
        }
    }  

    }

module wheel(){
    rotate([0,90,0]){
        difference(){
            color("green"){
            cylinder(24, 32, 32);
            }
            translate([0,0,-5]){
            cylinder(50, 4,4);
            }
            }
    }
    }
