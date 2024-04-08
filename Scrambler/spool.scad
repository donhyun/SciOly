/*
difference(){
    cylinder(50,14,14, $fn=100);
    cylinder(60,3.9,3.9,$fn=100);
    cylinder(10,7.25,7.25, $fn=6);
    
    translate([-2.5,10,0]){
        cube([5,5,5]);    
        
    }
    
    translate([0,25,25]){
    rotate([90,0,0]){
        cylinder(50,2,2, $fn=100);
        }
    }
    translate([10,25,25]){
    rotate([90,0,0]){
        cylinder(50,2,2, $fn=100);
        }
    }
}
*/
/*
difference(){
    cylinder(5, 20, 14, $fn=100); 
    cylinder(10,14,14, $fn=100);

}
*/

/*
difference(){
    cylinder(5, 25, 25, $fn=100); 
    cylinder(10,14,14, $fn=100);
    
}
translate([-2.5,10,0]){
        cube([5,5,5]);    
        
    }

for ( i = [1:1:20]) {
    rotate([0, 0,i*360/20]){
        translate([0,20,0]){
            rotate([0,0,5]){
                cube([8, 6, 5]);
            }
        }
    }
}
*/

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