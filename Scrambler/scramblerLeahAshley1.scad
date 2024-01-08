
difference(){
    cube([80,150,40]);

    // bearing hole
    translate([-5,20,20]){
        rotate([0,90,0]){
            cylinder(100, 14.5, 14.5);
        }
    }
 }
 
 
 

 
 
/*
    translate([-5,20,20]){
        rotate([0,90,0]){
            $fn=1000;
            cylinder(100, 14.5, 14.5);
        }
    }
    
    */