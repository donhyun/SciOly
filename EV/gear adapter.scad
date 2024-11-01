


difference(){
    cylinder(15,5,5, $fn=100);
    cylinder (10, 2, 2, $fn=100);
    translate([0,0,10]){
        sphere(2.75, $fn=100);
    }
}

translate([-33.5,-12.7,15]){
    color("blue");
    import("axle2.stl", convexity=10);
}

translate([-2,1.6,0]){
    cube([4,2,10]);
}

