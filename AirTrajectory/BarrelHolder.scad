



difference(){
    mount();
    translate([0,0,-25]){
        cylinder(30, 13.1, 13.1, $fn=100);
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


translate([-1,-15,-1]){
cube([2,30,2]);
}

translate([-15,-1,-1]){
    cube([30,2,2]);
}

module mount(){
    translate([0,0,-20]){
    cylinder(20,15, 15);
    } 
    translate([-15,0,-20]){
    cube([30,27.5,20]);
    }
    }