
slider2();

module slider2(){
    difference(){
        slider();
        translate([35,25,-5]){
            cylinder(60, 17.5, 17.5, $fn=100);
        }
            translate([115,25,-5]){
            cylinder(60, 17.5, 17.5, $fn=100);
        }
        translate([59, 14,-5]){
            cube([32,12,100]);
        }
    }
}

module slider(){
    translate([0,-20,0]){
        cube([150,80,3]);
    }
    
    //left wall
    translate([4,-16,0]){
        cube([1, 72, 5]);
    }
    
    //right wall
    translate([146,-16,0]){
        cube([1, 72, 5]);
    }
    
    //back wall
    translate([4,56,0]){
        cube([142, 1, 5]);
    }
    
    //front wall
    translate([4,-16,0]){
        cube([142, 1, 5]);
    }
    
}