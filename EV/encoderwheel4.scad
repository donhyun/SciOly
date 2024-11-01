

difference(){
    cylinder(2, 25, 25);
    cylinder(3, 20, 20);
    translate([0,0,0]){
        cube(50, 25, 25);
    }
    translate([0,50,0]){
        cube(50, 25, 25);
    }
    translate([-50,-50,0]){
        cube(50, 25, 25);
    }
}



difference(){
    axle();
    translate([-34.6,-13.1,-8]){
        scale([1.04, 1.04, 1.04]){
            import("axle2.stl", convexity=3);
        }
    }
}


difference(){
    cylinder(2,20,20);
    translate([0,0,-1]){
        cylinder(5,15,15, $fn=50);
    }
}

module axle(){
    
    cylinder(5,5,5);
    translate([-15,-1.5,0]){
    cube([30,3,2]);
    }

    rotate([0,0,90]){
        translate([-15,-1.5,0]){
            cube([30,3,2]);
        }
    }
        
    
}