


//bearing diameter= 29
//bearing radius = 14.5

//cube([40,120,10]);

//nut radius = 8mm

wheel1();
hub();

difference(){
    rotate([0,90,0]){
        for (i=[1:1:6]){
                rotate([0,0,i*60]){
                    translate([-10,50,0]){
                    cube([20,15,8]);
                    }
                    
                }
            }
        }
        
    rotate([0,90,0]){
        for (i=[1:1:6]){
                rotate([0,0,i*60]){
                    
                    $fn=6;
                    translate([0,58,-5]){
                        cylinder(20,6.4,6.4);
                        }
                    
                }
            }
        }    
    }

module wheel1(){
    rotate([0,90,0]){
        difference(){
            cylinder(1,70.5,70.5, $fn=100);
            cylinder(1,68,68);
        }
        
        translate([0,0,7]){
            difference(){
                cylinder(1,70.5,70.5, $fn=100);
                cylinder(2,68,68);
            }
        }
        
        
        
        
        difference(){
            cylinder(8,70,70, $fn=200);
            translate([0,0,-5]){
                cylinder(20,65,65, $fn=200);
            }
        }
    }
    
    for ( i = [1:1:6]) {
        rotate([i*60, 0,0]){
            translate([0,7,-2]){
                cube([8, 45, 4]);
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
                cylinder(20,7.25,7.25);
            }
        }
    }
    
    
    }