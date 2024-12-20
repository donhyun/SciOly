
translate([0,0,0]){
    flange();
}

difference(){
    translate([-15,-35,0]){
        cube([30,70,70]);
    }
    translate([-30,0,40]){
        rotate([0,90,0]){
            cylinder(100, 24.2, 24.2, $fn=100);
        }
    }
}

module block(){
    intersection(){
        translate([90,-35,0]){
            cube([40,70,70]);
        }
        cylinder(100, 254/2, 254/2, $fn=100);
    }
}

module flange(){
difference(){
        translate([-34,-34,0]){
            cube([68,68,3]);
        }
        
        translate([25,25,0]){
            cylinder(5, 1.5, 1.5, $fn=100);
        }
        
        translate([-25,25,0]){
            cylinder(5, 1.5, 1.5, $fn=100);
        }
        
        translate([25,-25,0]){
            cylinder(5, 1.5, 1.5, $fn=100);
        }
        
        translate([-25,-25,0]){
            cylinder(5, 1.5, 1.5, $fn=100);
        }
    }
}