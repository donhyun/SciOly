$fn=100;

connector10();

translate([50,0,0]){
connector3();
}

translate([100,0,0]){
connector5();
}

translate([500,500,0]){
carblock();
}



module carblock(){
    difference(){
        cube([80,150,40]);

        // bearing hole
        translate([-5,20,20]){
            rotate([0,90,0]){
                cylinder(100, 14.5, 14.5);
            }
        }
         color("green"){
            translate([35,110,30]){
                cube([10,42, 12]);
            }
        }
     }
     
 }
 
 
  module connector10(){
     cube([10,40,10]);
translate([0,39,0]){
    rotate([0,0,5]){
        cube([10,40,10]);
    }
}
linear_extrude(12)
            translate([0, 45, 0])
            text( str(10),size=3 );
     }
 
 module connector5(){
     cube([10,40,10]);
translate([0,39,0]){
    rotate([0,0,5]){
        cube([10,40,10]);
    }
}
linear_extrude(12)
            translate([0, 45, 0])
            text( str(5),size=3 );

     }

 
 module connector3(){
     cube([10,40,10]);
translate([0,39,0]){
    rotate([0,0,3]){
        cube([10,40,10]);
    }
}
linear_extrude(12)
            translate([0, 45, 0])
            text( str(3),size=3 );
     }
 
 
/*
    translate([-5,20,20]){
        rotate([0,90,0]){
            $fn=1000;
            cylinder(100, 14.5, 14.5);
        }
    }
    
    */