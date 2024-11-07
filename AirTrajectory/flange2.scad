

difference(){
    cylinder(40,26,26, $fn=100);
    cylinder(50,24.15, 24.15, $fn=100);
}

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
        
        cylinder(50,24.15, 24.15, $fn=100);
    }