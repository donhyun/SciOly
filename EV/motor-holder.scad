
difference(){
    cube([60,40,18]);
    /*
    translate([30,-1,2]){
        cube([26.5,35,3.3]);
    }
    */
    translate([-2,27,7])
    cube([35,8.1,8.1]);
    
    translate([-2,5,7])
    cube([35,8.1,8.1]);
    
}


translate([30, 0,-29]){
    difference(){
        cube([30,3,30]);

        translate([15,5,10]){
            rotate([90,0,0]){
                cylinder(10,5,5, $fn=20);
            }
        }
        
        translate([7,5,10]){
            rotate([90,0,0]){
                cylinder(10,1.8,1.8, $fn=20);
            }
        }

        translate([23,5,10]){
            rotate([90,0,0]){
                cylinder(10,1.8,1.8, $fn=20);
            }
        }


    }
}
