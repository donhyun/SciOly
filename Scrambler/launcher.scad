
// 2.38 radius

baseplate();

translate([200,0,914]){
    rotate([0,180,0]){
    topplate2();
    }
}

translate([0,0,620]){
    color("blue"){
    slider();
    }
}

translate([0,-100,0]){
    pusher2();
    }

// 2x4
translate([-38,-900,0]){
twobyfour();
}

translate([200,-900,0]){
twobyfour();
}

// rods
translate([60,10,0]){
        color("gray"){
        cylinder(914, 2.38, 2.38);
        }
        }

    translate([140,10,0]){
        color("gray"){
        cylinder(914, 2.38, 2.38);
        }
        }

module baseplate(){
    cube([200,100,5]);
    translate([60,10,0]){
        rodholder();
        }
        
    translate([140,10,0]){
        rodholder();
        }

    sidewall();
    translate([195,0,0]){
        sidewall();
        }
    }

module rodholder(){
    difference(){
        cylinder(30, 4, 4);
        translate([0,0,5]){
            cylinder(30, 2.38, 2.38, $fn=100);
        }
    }
}

module rodholder2(){
    difference(){
        cylinder(50, 20, 20);
        translate([0,0,5]){
            cylinder(50, 17.5, 17.5, $fn=100);
        }
    }
}

module sidewall(){
    difference(){
        cube([5,100, 45]);
        translate([-25, 25, 30]){
        rotate([0, 90,0]){
            cylinder(100, 3.1, 3.1);
        }
    }
    
    translate([-25, 75, 30]){
        rotate([0, 90,0]){
            cylinder(100, 3.1, 3.1);
        }
    }
        
    }
    
}

module topplate(){
    translate([0,-10,0]){
        cube([200,50,5]);
    }
    translate([60,10,0]){
        rodholder();
        }
        
    translate([140,10,0]){
        rodholder();
        }

}

module topplate2(){
    difference(){
    topplate();
    translate([85, -2,-5]){
        cube([35,15,100]);   
    }
    
    
    }
}

module slider(){
    //floor
    translate([50,-20,0]){
        cube([100,55,5]);
    }
    
    //left wall
    translate([50,-20,0]){
        cube([5, 55, 50]);
    }
    
    //right wall
    translate([145,-20,0]){
        cube([5, 55, 50]);
    }
    
    //back wall
    translate([50,30,0]){
        cube([100, 5, 50]);
    }
    
    //front wall
    translate([50,-20,0]){
        cube([100, 5, 50]);
    }
    
    // trigger
    translate([85, 0,0]){
        
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
    translate([60,10,0]){
        rodholder2();
        }
        
    translate([140,10,0]){
        rodholder2();
        }
        
    //lever holder
    translate([50,-50,0]){
        difference(){
        cube([100, 30, 30]);
        translate([10, -5, -2]){
            cube([20, 35, 35]);
        }
        translate([70, -5, -2]){
            cube([20, 35, 35]);
        }
        translate([-5,15,15]){
            rotate([0,90,0]){
                cylinder(150, 5, 5);
            }
        }
        }
    }    
    
    
    }

module twobyfour(){
    color("brown"){
    cube([38, 1000,90]);
    }
}

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
       translate([0,60,28]){
        rotate([0,90,0]){
        cylinder(200, 4, 4, $fn=100);
        }
    }
    
    translate([0,-30,28]){
        rotate([0,90,0]){
        cylinder(200, 4, 4, $fn=100);
        }
    }
    
    }
    
 
    
    
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
    
    
    }

module pusher(){
        translate([10,-70,0]){
            cube([180,150,5]);
        }
        
        translate([10,-70,0]){
            cube([180,5,100]);
        }
    
        translate([10,-70,0]){
            cube([5,150,40]);
        }
        
        translate([185,-70,0]){
            cube([5,150,40]);
        }
        
        translate([60,-50,0]){
            cube([5,40,40]);
        }
        
        translate([135,-50,0]){
            cube([5,40,40]);
        }
        
        translate([60,40,0]){
            cube([5,40,40]);
        }
        
        translate([135,40,0]){
            cube([5,40,40]);
        }
        
        translate([50,-5,0]){
        difference(){
        cube([100, 30, 50]);
        translate([16, -2, 30]){
            cube([20, 35, 35]);
        }
        translate([64, -2, 30]){
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
