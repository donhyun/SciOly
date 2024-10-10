//Need: Holes the size of the bearings
//      Connector between car parts

import("axle.stl", convexity=3);

ScramblerFrontBoard();


//ScramblerBackBoard();

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
        translate([0,0.5,1]){
        cube([85,114,34]);
        }
        
        translate([10,9.5,-2])
        cube(96,90,155);
        
        translate([-15,00,15]){
            rotate([0,50,0]){
                cube([100,120,20]);
            }
        }
    
        
        translate([55,11,18])
        rotate([90,0,0])
        cylinder(15,11.05,11.05,$fn=100);
        translate([55,116,18])
        rotate([90,0,0])
        cylinder(16,11.05,11.05, $fn=100);
    }
    
    difference()
    {
        translate([55,9.5,18])
        rotate([90,0,0])
        cylinder(2,12,12);
        
        translate([55,11,18])
        rotate([90,0,0])
        cylinder(9,9.5,9.5);
    }
    translate([0,98,0])
    {
    difference()
    {
        translate([55,9.5,18])
        rotate([90,0,0])
        cylinder(2,12,12);
        
        translate([55,11,18])
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