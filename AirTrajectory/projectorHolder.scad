



difference(){
    mount();
    translate([0,0,-25]){
        cylinder(50, 17, 17, $fn=100);
    }
    
    


}


difference(){
    translate([-17,20,-20]){
    cube([100,5,40]);
    }
    translate([50,40,0]){
        rotate([90,0,0]){
            cylinder(40, 3.2, 3.2, $fn=100);
        }
    }


}




module mount(){
    translate([0,0,-20]){
    cylinder(40,20, 20);
    } 
    translate([-17,00,-20]){
    cube([35,20,40]);
    }
    }