
/*
translate([9,130,-5]){
    scale([1,10,1]){
        rotate([90,0,0]){

            import("axle2.stl", convexity=3);
        }
    }

}
*/
translate([43,0,7]){
    //cube(10,3,3)
    rotate([90,0,0]){
        difference(){
            cylinder(3,28,28);
               cylinder(5,25,25, $fn=50);
            }
        for ( i = [1:18:360]) {    
            rotate([0,0,i]){
            translate([25,-2,0]){    
            cube([5,5,3]);
            }
        }
        }
    }
}


difference(){
    cube([60,120,20]);
    translate([43,125,7]){
        rotate([90,0,0]){
            cylinder(150, 3, 3);
        }
    }
    translate([10,10,-5]){
        cube([60,100,30]);
    }

    translate([5,60,5]){
        cylinder(150, 3, 3, $fn=100);
    }
    
}


translate([-100,0,0]){
    for (a =[0:5]){  
        translate([0,a*22,0]){
        cube([100,10,10]);
        }
    }
}


translate([-100,0,0]){
    for (a =[0:5]){  
        translate([a*17,0,0]){
            cube([5,110 ,10]);
        }
    }
}

translate([-130,67,0])
    cube([30,8,8]);
    
    translate([-130,45,0])
        cube([30,8,8]);