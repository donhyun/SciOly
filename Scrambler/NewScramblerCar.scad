//Need: Holes the size of the bearings
//      Connector between car parts


ScramblerFrontComplete();

module ScramblerFrontComplete(){
    ScramblerFrontBoard();
    translate([40,0,-50]){
    cube([15,10,50]);
    }
    translate([40,105,-50]){
    cube([15,10,50]);
    }
}


ScramblerBackBoard();

module  ScramblerBackBoard(){
    
    difference(){
    translate([-200,108,0]){
        rotate([0,0,181]){
            ScramblerFrontBoard();
            }
        }
        
   ScramblerFrontBoard();
    }
    
    }

module ScramblerFront()
{
    translate([-120,60,25])
    cube([30,8,8]);
    
    translate([-120,40,25])
        cube([30,8,8]);
    
    
    difference()
    {
        cube([55,115,35]);
        
        translate([10,10,20])
        cube([95,95,7]);
        translate([10,10,-2])
        cube(95,90,55);
        
        translate([-15,00,15]){
            rotate([0,50,0]){
                cube([100,120,20]);
            }
        }
    
        
        translate([38,11,18])
        rotate([90,0,0])
        cylinder(15,11.2,11.2);
        translate([38,116,18])
        rotate([90,0,0])
        cylinder(16,11.2,11.2);
    }
    
    difference()
    {
        translate([38,10,18])
        rotate([90,0,0])
        cylinder(2,12,12);
        
        translate([38,11,18])
        rotate([90,0,0])
        cylinder(9,9.5,9.5);
    }
    translate([0,97,0])
    {
    difference()
    {
        translate([38,10,18])
        rotate([90,0,0])
        cylinder(2,12,12);
        
        translate([38,11,18])
        rotate([90,0,0])
        cylinder(9,9.5,9.5);
    }
}
    
}
module ScramblerFrontBoard()
{
    ScramblerFront();
    translate([100,0,0])
{
    ScramblerBoard();
}
}

module ScramblerBoard()
{
    translate([-200,30,25])
    {
        cube([100,50,10]);
    }
}
// Bearing size: 22 in diameter