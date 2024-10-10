translate([55,30,18]){
        rotate([90,0,0]){
            ratchet2complete();
        }
}
module ratchet2complete(){
    difference(){
        ratchet2();
        cylinder(7,7.25,7.25,$fn=6);
    }
}

module ratchet2(){

    
        cylinder(5,42,42,$fn=100);

        for ( i = [1:1:30]) {
            rotate([0, 0,i*360/30+5]){
                translate([0,36,0]){
                    rotate([0,0,25]){
                        cube([17, .5, 5]);
                    }
                }
            }
        }

}