translate([18,-75,0]){
    difference(){
        cube([5,150,50]);
        translate([-10,10,5]){
            rotate([0,90,0]){
                cylinder(50,3.3,3.3);
            }
        }
        translate([-10,10,15]){
            rotate([0,90,0]){
                cylinder(50,3.3,3.3);
            }
        }
        translate([-10,10,25]){
            rotate([0,90,0]){
                cylinder(50,3.3,3.3);
            }
        }
        translate([-10,10,35]){
            rotate([0,90,0]){
                cylinder(50,3.3,3.3);
            }
        }
        translate([-10,10,45]){
            rotate([0,90,0]){
                cylinder(50,3.3,3.3);
            }
        }
    }
}

translate([-118,0,0]){
cube([100,5,50]);
}

translate([-50,0,0]){
    rotate([0,0,45]){
        cube([100,3,50]);
    }
}
translate([-115,0,0]){
    rotate([0,0,28]){
        cube([155,3,50]);
    }
}

difference(){
    cylinder(50, 20, 20);
    translate([0,0,-5]){
        cylinder(60, 17.2, 17.2, $fn=100);
    }
}
