slider2();

module rodholder2(){
    difference(){
        cylinder(50, 20, 20);
        translate([0,0,-5]){
            cylinder(60, 17.5, 17.5, $fn=100);
        }
    }
}

module slider2(){
    difference(){
    slider();
    translate([35,25,-5]){
        cylinder(60, 17.5, 17.5, $fn=100);
    }
        translate([115,25,-5]){
        cylinder(60, 17.5, 17.5, $fn=100);
    }
    }
    }

module slider(){
    //floor
    translate([0,-20,0]){
        cube([150,80,5]);
    }
    
    //left wall
    translate([0,-20,0]){
        cube([3, 80, 50]);
    }
    
    //right wall
    translate([147,-20,0]){
        cube([3, 80, 50]);
    }
    
    //back wall
    translate([0,60,0]){
        cube([150, 3, 50]);
    }
    
    //front wall
    translate([0,-20,0]){
        cube([150, 3, 50]);
    }
    
    // trigger
    translate([60, 15,0]){
        
        difference(){
        cube([30,10,100]);
        translate([15,-20,90]){
            rotate([0,90,90]){
                cylinder(40,4,4);
            }
        }
    }
        
        }
        //rod sleeves
    translate([35,25,0]){
        rodholder2();
        }
        
    translate([115,25,0]){
        rodholder2();
        }
        
    //lever holder
    translate([25,-50,0]){
        difference(){
            cube([100, 30, 30]);
            translate([-5,0,0]){
                rotate([45,0,0]){
                    cube([110, 43, 30]);
                }
            }
        }

    }    
    
    
    }