


//bearing diameter= 29
//bearing radius = 14.5

//cube([40,120,10]);

//nut radius = 8mm

wheel1();
hub();

for ( i = [1:1:6]) {
    rotate([i*60, 0,0]){
        translate([0,7,-2]){
            cube([8, 30, 4]);
        }
    }
}


module wheel1(){
    rotate([0,90,0]){
        difference(){
            cylinder(8,60,60, $fn=1000);
            translate([0,0,-5]){
                cylinder(20,35,35, $fn=1000);
            }
            
            for (i=[1:1:12]){
                rotate([0,0,i*30]){
                    $fn=6;
                    translate([0,47,-5]){
                        cylinder(20,8,8);
                        }
                    
                }
            }
        }
    }
}

module hub(){
        rotate([0,90,0]){
        difference(){
            $fn=6;
            cylinder(8,12,12);
            translate([0,0,-5]){
                
                cylinder(20,7,7);
            }
        }
    }
    
    
    }