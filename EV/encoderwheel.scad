


difference(){
    axle();
    translate([-34.6,-13.1,-8]){
        scale([1.03, 1.03, 1.03]){
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

for ( i = [1:24:360]) {    
    rotate([0,0,i]){
        translate([19,-2,0]){    
            cube([5,5,2]);
        }
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