/*
difference(){
    cylinder(50,14,14, $fn=100);
    cylinder(60,3.9,3.9,$fn=100);
    cylinder(10,7.25,7.25, $fn=6);
    translate([0,25,25]){
    rotate([90,0,0]){
        cylinder(50,2,2, $fn=100);
        }
    }
    translate([10,25,25]){
    rotate([90,0,0]){
        cylinder(50,2,2, $fn=100);
        }
    }
}
*/

difference(){
    cylinder(5, 20, 14, $fn=100); 
    cylinder(10,14,14, $fn=100);

}

