translate([0,0,0]){
    cube([11.9,11.9,10]);
}

translate([34,0,0]){
    cube([11.9,11.9,10]);
}

translate([0,0,10]){
cube([70,3,60]);
}

translate([3,13,20]){
    rotate([90,0,0]){
        cylinder(12,1.5, 1.5, $fn=100);
    }
}

translate([3,13,20+27.9]){
    rotate([90,0,0]){
        cylinder(12,1.5, 1.5, $fn=100);
    }
}

translate([3+52.1,13,20-5.1]){
    rotate([90,0,0]){
        cylinder(12,1.5, 1.5, $fn=100);
    }
}

translate([3+52.1-1.3,13,20-5.1+48.3]){
    rotate([90,0,0]){
        cylinder(12,1.5, 1.5, $fn=100);
    }
}
