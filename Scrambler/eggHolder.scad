difference(){
    front();
        
        

    translate([65,115,2]){
    rotate([0,0,180]){
        car();
        }
    }
    
    
    translate([-6,58.5,-30]){
    cylinder(30, 3.2, 3.2, $fn=20);
}
translate([-15,42,25]){
    rotate([0,90,0]){
        cylinder(30, 3.2, 3.2, $fn=20);
    }
}

translate([-15,75,25]){
    rotate([0,90,0]){
        cylinder(30, 3.2, 3.2, $fn=20);
    }
}
    
    
    
    
}



module front(){
    
    translate([-12,33.5,-20]){
        cube([12,50,50]);
    }
    /*
    translate([0,-2,0]){
        cube([10,119,39]);
        }
    translate([0,-2,0]){
        cube([50,15,39]);
        }
    
    translate([0,102,0]){
        cube([50,15,39]);
        }
    */
    }
        
module car(){    
    difference()
    {
        cube([55,115,35]);

        translate([10,10,-2])
        cube(95,90,55);
    }
    
}