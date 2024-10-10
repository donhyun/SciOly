/*
difference(){
    spool();
    cylinder(60,3.9,3.9,$fn=100);
    cylinder(10,7.25,7.25, $fn=6);
    
    
    translate([10,35,10]){
    rotate([90,0,0]){
        cylinder(70,2,2, $fn=100);
        }
    }
    

    translate([10,35,30]){
    rotate([90,0,0]){
        cylinder(70,2,2, $fn=100);
        }
    }  
}
*/


difference(){
    
    hollowspool();
    cylinder(60,3.9,3.9,$fn=100);
    cylinder(9,7.25,7.25, $fn=6);
    }
    
    

module hollowspool(){
    difference(){
        spool();
        cylinder(50,28,25);
        
         translate([10,35,10]){
        rotate([90,0,0]){
            cylinder(70,2,2, $fn=100);
            }
        }
        

        translate([10,35,30]){
        rotate([90,0,0]){
            cylinder(70,2,2, $fn=100);
            }
        }
    }
    cylinder(10,9,9);
    translate([0,0,10]){
    cylinder(30,6,6);
    }
    translate([-30,-1,0]){
    cube([60,2,40]);
    }
    
    rotate([0,0,90]){
    translate([-30,-1,0]){
    cube([60,2,40]);
    }
}

}


module spool(){
cylinder(40,30,30, $fn=100);
cylinder(5, 35, 30, $fn=100);

translate([0,0,15]){
    cylinder(5, 30, 35, $fn=100);
    }
translate([0,0,20]){
    cylinder(5, 35, 30, $fn=100);
    }

translate([0,0,35]){
    cylinder(5, 30, 35, $fn=100);
    }

}
/*
difference(){
    cylinder(5, 35, 30, $fn=100); 
    cylinder(10,30,30, $fn=100);

}
*/



/*
translate([0,0,5]){
    cylinder(3, 35, 30);
    }
difference(){
    cylinder(5, 35, 35, $fn=100); 
    cylinder(10,30,30, $fn=100);
    
}
*/
/*
translate([-2.5,25,0]){
        cube([5,5,5]);    
        
    }
*/
/*
for ( i = [1:1:30]) {
    rotate([0, 0,i*360/30]){
        translate([0,30,0]){
            rotate([0,0,5]){
                cube([8, 6, 5]);
            }
        }
    }
}
*/
/*
difference(){
    ratchet();
    translate([10,3,0]){
        cylinder(20,7.25,7.25, $fn=6);
    }
    translate([115,3,0]){
    cylinder(10,1.5,1.5, $fn=20);
    }
}

module ratchet(){
       
    cube([120,6,5]);
    translate([0,-7.5,0]){
        cube([20,20,5]);
    }

}
*/