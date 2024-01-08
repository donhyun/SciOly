translate([0,-120,0]){
chassis1();
}
translate([0,180,50]){
rotate([0,180,181]){
chassis2();
    rotate([0,0,1]){
        connector();
    }
}
}

module chassis1(){

difference(){
    color("green"){
    cube([80,150,40]);
    }
    
    // bearing hole
    translate([-5,20,20]){
        rotate([0,90,0]){
            $fn=1000;
            cylinder(100, 14.5, 14.5);
        }
    }
    
    // cut out top block
    translate([-5,40,-5]){
        cube([90,120,30]);
    }

    // cut out middle block
    translate([20,-5,-5]){
        cube([40,100,50]);
    }

    
    // connector slots
    translate([20,105,20]){
        cube([10,55,15]);
    }
    
    translate([50,105,20]){
        cube([10,55,15]);
    }
}

}

module chassis2(){
    
difference(){
    cube([80,150,40]);

    translate([-5,20,20]){
        rotate([0,90,0]){
            $fn=1000;
            cylinder(100, 14.5, 14.5);
        }
    }
    // cut out top block
    translate([-5,40,-5]){
        cube([90,120,30]);
    }

    // cut out middle block
    translate([20,-5,-5]){
        cube([40,100,50]);
    }
    
    // slice end at 1 degree
    translate([0,147,0]){
        rotate([0,0,1]){
            cube([100,20,50]);
        }
    }

}

}

module connector(){
    
        translate([20,140,30]){
        cube([10,35,10]);
    }
    
    translate([50,140,30]){
        cube([10,35,10]);
    }
    }