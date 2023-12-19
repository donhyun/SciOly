

frame1final();

//

translate([100,160,0]){
    rotate([0,0,-90])
    slider3final();
}


translate([108,-20,0]){
    rotate([0,0,90])
    frame2final();
}
        
translate([30,90,0]){
    tframe();
    }

translate([20,120,0]){
    
    trisliderfinal();
    }
    
    

module frame1final(){
        difference(){
        frame1();
        
        /* remove 45 degree angle
            at side of frame */
         translate([41,-50,-5]){
            rotate([0,0,45]){
                color("green"){
                    cube([70,140, 20]);
                }
            }
        }
        
        
        /* remove 45 degree angle at 
        laser source */
        translate([190,49,-5]){
                rotate([0,0,45]){
                    color("green"){
                        cube([70, 70, 20]);
                    }
                }
            } 
        
    }
}


module frame1(){
    /* horizontal frame */
    cube([180,20,5]);
    
    /* vertical frame */
    cube([15,110,5]);
    
    /* horizontal laser line frame */
    translate([0,62,0]){
        cube([170,5,5]);
    }



    /* 45 degree frame */
    translate([90,0,0]){
        rotate([0,0,45]){
            cube([15,120, 5]);
        }
    }  

    /* number horizontally */
    for (i = [0: 17]){
        translate([i*10, 0, 0])
        cube([1, 20, 6]);
        linear_extrude(8)
        translate([i*10+2, 0, 0])
        text( str(i),size=3 );

    }


    /* number vertically */
    for (i = [7: 10]){
        translate([0, i*10, 0])
        cube([15, 1,  6]);
        linear_extrude(8)
        translate([0, i*10+2, 0])
        text( str(i),size=3 );

    }
    
    /* laser source frame */
    translate([170,0,0]){
        cube([15,80,5]);
    }    
    
    /* laser source */
    translate([174.5,0,0]){
        cube([1,70,6]);
    }

    /* horizontal laser line */
    translate([5,64,0]){
        cube([170,1,6]);
    }

    /* laser line vertical */
    translate([25,45,0]){
        cube([1, 40 ,6]);
    }

    /* label */
    linear_extrude(8)
            translate([17, 45, 0])
            text( str(14),size=3 );
}




module frame2final(){
    
    difference(){
        frame2();
        
        /* remove 45 degree angle */
        translate([-83,65,-5]){
                rotate([0,0,-45]){
                    color("green"){
                        cube([80,180, 20]);
                    }
                }
            }

    }
}

module frame2(){
    /* top bar */
    translate([0,110,0]){
        cube([120,20,5]);
        /* numbering */
        /*
        for (i = [0: 17]){
        translate([i*10, 0, 0])
            cube([1, 20, 6]);
            linear_extrude(8)
            translate([i*10+2, 0, 0])
            text( str(i),size=3 );

        }
        */
    }
    
    /* side bar */
    cube([15,100,5]);
        for (i = [1: 10]){
        translate([0, i*10, 0])
        cube([15, 1,  6]);
        linear_extrude(8)
        translate([0, i*10+2, 0])
        text( str(10-i),size=3 );

    }



    /* diagonal */
    translate([0,35,0]){
        rotate([0,0,-45]){
            cube([15,120, 5]);
        }
    }  


    /* laser line at 25 */
    translate([25,40,0]){
        cube([1, 30 ,6]);
    }
    
    /* horizontal line */
    translate([15,60,0]){
        cube([30,1,6]);
    }

}


module slider3final(){
    difference(){
        slider3();
    
        /* remove 45 degree angle */
        translate([0,0,-5]){
            rotate([0,0,-45]){
                color("green"){
                    cube([60,120, 20]);
                }
            }
        }
        
        /* remove under side so it can slide
        under frame 2 */
        translate([-60,40,-5]){
            rotate([0,0,-45]){
                color("green"){
                    cube([60,120, 10]);
                }
            }
        }
    }
}

        

module slider3(){

    /* base */
    cube([40,80,10]);
    
    /* laser line target */
    translate([10,0,0]){
        cube([1,80,11]);
    }
    
    /* horizontal line */
    translate([0,10,0]){
        cube([20,1,11]);
    }

}

module tframe(){
    
   cube([180, 20, 5]);
    for (i = [0: 17]){
        translate([i*10, 0, 0])
        cube([1, 20, 6]);
        linear_extrude(8)
        translate([i*10+2, 0, 0])
        text( str(18-i),size=3 );

    }
    translate([160,-40,0]){
        cube([20,120,5]);

    
        for (i = [1: 11]){
            translate([0, i*10, 0])
            cube([20, 1,  6]);
            linear_extrude(8)
            translate([5, i*10+2, 0])
            text( str(i),size=3 );

        }
        }
    }
    
    
    
module trisliderfinal(){
    difference(){
        trislider();
        translate([0,0,-2]){
            rotate([0,0,45]){
                cube([100,100,10]);
            }
        }
        
        translate([100,0,-2]){
            rotate([0,0,45]){
                cube([100,100,10]);
            }
        }
    }
}

    
module trislider(){
    cube([100,50,5]);
    for (i = [0: 9]){
        translate([i*10, 0, 0])
        cube([1, 50, 6]);
        linear_extrude(8)
        translate([i*10+2, 0, 0])
        text( str(18-i),size=3 );

    }
    for (i = [1: 4]){
            translate([0, i*10, 0])
            cube([100, 1,  6]);
            linear_extrude(8)
            translate([50, i*10+2, 0])
            text( str(i),size=3 );

        }
    }