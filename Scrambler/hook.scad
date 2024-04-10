
difference(){
    cube([40,54,14]);
    translate([-5,2,2]){
        cube([100,50.2,10.2]);
    }
}


translate([0,-10,0]){
    cube([40,10,14]);   
}
translate([30,0,12]){
    rotate([90,0,0]){
        cylinder(10,10,10); 
    }   
}

translate([10,-10,19]){
    cube([20,10,3]);   
}

translate([35,73,5]){
    rotate([90,0,0]){
        cylinder(20,1.5,1.5, $fn=20);
    }
}
