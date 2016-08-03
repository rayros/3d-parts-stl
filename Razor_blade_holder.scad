bladeX = 43;
bladeY = 22;
bladeZ = 0.5;

border = 2;

union() {

color([1,0,0])
translate([-border,bladeY/2,0])
cube([bladeX+border*2, bladeY/2+border, 2]);

color([1,0,0])
translate([bladeX,bladeY/2,1])
rotate([90, 0, 90])
cube([bladeY/2+border, 4+bladeZ, 2]);

color([1,0,0])
translate([-border,bladeY/2,1])
rotate([90, 0, 90])
cube([bladeY/2+border, 4+bladeZ, 2]);
    
color([1,0,0])
translate([0,bladeY+border,0])
    rotate([90,0,0])
cube([bladeX, 5+bladeZ, 2]);


color([1,0,1])
translate([0,bladeY/2,4.5])
cube([2, 3, 1]);
color([1,0,1])
translate([bladeX-2,bladeY/2,4.5])
cube([2, 3, 1]);

color([1,0,1])
translate([bladeX/2 - 5/2,bladeY-2,4.5])
cube([5, 2, 1]);

color([1,0,1])
translate([bladeX/2 - 5,bladeY+2,0])
cube([10, 50, 5.5]);
}