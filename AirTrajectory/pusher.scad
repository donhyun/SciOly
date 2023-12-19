$fn=100;


difference(){
cylinder(100, 19,19);
translate([0,0,10]){
    rotate_extrude(convexity = 10, $fn = 100)
    translate([18, 0, 0])
    circle(r = 2, $fn = 100);
};

translate([0,0,80]){
    rotate_extrude(convexity = 10, $fn = 100)
    translate([18, 0, 0])
    circle(r = 2, $fn = 100);
};
translate([0,0,100]){
sphere(20);
}
}
