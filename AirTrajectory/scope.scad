



difference(){
    mount();
    translate([0,0,-25]){
        cylinder(30, 16.8, 16.8, $fn=100);
    }
    
    


}


difference(){
    translate([-50,25,-20]){
    cube([100,5,20]);
    }
    translate([30,40,-10]){
        rotate([90,0,0]){
            cylinder(20, 3.2, 3.2, $fn=100);
        }
    }
    translate([-30,40,-10]){
        rotate([90,0,0]){
            cylinder(20, 3.2, 3.2, $fn=100);
        }
    }

}


translate([-1,-17.5,-2]){
cube([2,35,2]);
}

translate([-17.5,-1,-2]){
    cube([35,2,2]);
}

module mount(){
    translate([0,0,-20]){
    cylinder(20,18, 18);
    } 
    translate([-15,0,-20]){
    cube([30,27.5,20]);
    }
    }