
translate([0,0,-15]){
    difference(){
        cube([30,40,18]);
        /*
        translate([30,-1,2]){
            cube([26.5,35,3.3]);
        }
        */
        
        translate([-2,27,7]){
            cube([35,8.1,8.1]);
        }
        /*
        translate([0,9.075,7]){
            rotate([0,90,0]){
                cylinder(35, 4.075, 4.075, $fn=100);
            }
        }*/
                
        
        translate([-2,5,7]){
            cube([35,8.1,8.1]);
        }
        /*
        translate([0,31.075,7]){
            rotate([0,90,0]){
                cylinder(35, 4.075, 4.075, $fn=100);
            }
        }*/
            
    }
}


difference(){
    translate([30,0,-15]){
    cube([30,40,43]);
    }
    translate([45,70,0]){
        rotate([90,0,0]){
            cylinder(80, 12.5, 12.5, $fn=100);
        }
    }
    
    translate([28,7.5,13]){
    cube([40,25,40]);
}
    
    for ( i = [1:1:3]) {
        translate([45,70,i*7.97]){
            rotate([90,0,0]){
                cylinder(80, 2.8,2.8,$fn=100);
            }
        }
        
    }
        
}


translate([30, 0,-10]){
    difference(){
        translate([0,0,-5]){
            cube([30,3,28]);
        }
        translate([15,5,10]){
            rotate([90,0,0]){
                cylinder(10,5,5, $fn=20);
            }
        }
        
        translate([7,5,10]){
            rotate([90,0,0]){
                cylinder(10,1.9,1.9, $fn=20);
            }
        }

        translate([23,5,10]){
            rotate([90,0,0]){
                cylinder(10,1.9,1.9, $fn=20);
            }
        }

    }
}
