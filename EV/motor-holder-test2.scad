


difference(){
    cube([30,3,30]);

    translate([15,5,15]){
        rotate([90,0,0]){
            cylinder(10,4,4, $fn=20);
        }
    }
    
    translate([7,5,15]){
        rotate([90,0,0]){
            cylinder(10,1.4,1.4, $fn=20);
        }
    }

    translate([23,5,15]){
        rotate([90,0,0]){
            cylinder(10,1.4,1.4, $fn=20);
        }
    }


}


cube([30,20,3]);