


difference(){
cube([150,50,5]);
    translate([58,23,-5]){
    
        cube([34,14,100]);
}
}
translate([35,25,0]){
    rodholder();
}

translate([115,25,0]){
    rodholder();
}




module rodholder(){
    difference(){
        cylinder(35, 20, 20);
        translate([0,0,-5]){
            cylinder(45, 16.7, 16.7, $fn=100);
        }
    }
}