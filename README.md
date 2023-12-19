# SciOly
The purpose of this repository is to share ideas to benefit the Raisbeck Aviation Science Olympiad Team.  Anyone can use anything that is available in this repository.  The hope is that everyone will take these designs as a baseline and customize/modify them in the spirit of good competition.

## OpenSCAD
Most files are made in Openscad.
It is free and can be downloaded here:
[Download Openscad] (https://openscad.org/downloads.html)

Here is a quick 10 minute tutorial on how to use Openscad:
[Openscad tutorial] (https://www.youtube.com/watch?v=dzzFOU_Ggrs)

Here is a cheatsheet on how to use most of the commands on OpenScad:
[Cheatsheet](https://openscad.org/cheatsheet/index.html)

Here are the 6 commands you need to know to do 99% of stuff in SciOly:

$fn=1000;
cylinder(10, 100, 100);
cube([10,10,10]);
difference()
translate([10,10,10])
rotate[[90,90,90])

Once you render and export to STL, you would use PrusaSlicer to prepare for 3d print.

## PrusaSlicer

PrusaSlicer prepares an STL for 3d printing on the 3d printers available at Raisbeck.
[Download PrusaSlicer](https://www.prusa3d.com/page/prusaslicer_424/)

To configure the Prusa Slicer, you choose Original Prusa i3 MK3 as the printer.  The default nozzle size is .4mm.
You can print at .15mm Quality.
You can use Generic PLA as the filament type.

If you have parts that have overhangs (like an upside down L), then you will need to set the supports setting to Everywhere. 

Click on File > Import > STL/3MF/STEP/OBJ/AMF
Then choose your STL file.
Orient it properly so that it will print correctly.  (Minimize overhangs)
Click on Slice Now
Export G-Code.


Finally, you put the G-Code file on to an SD-Card, then print on the 3d printer.
I recommend getting help from someone who has 3d printed when you're trying this for the first time.


