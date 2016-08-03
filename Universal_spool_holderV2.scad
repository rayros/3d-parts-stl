module bearingInput(outerWidth=5, height=7, d = 22.5) {
difference() {
linear_extrude(height=height)
 circle($fn = 100, d = d + outerWidth);
    
translate([0,0,-2])
    linear_extrude(height=height+4)
        circle($fn = 100, d = d);
}
}

bearingInput(2);
translate([0,0,7])
    bearingInput(2.5, 30-7-7, 22);
translate([0,0,30-7])
bearingInput(2);


module wing() {
rotate([90,180,0])
linear_extrude(height=1)
    polygon(points=[[0,0], [31, 30], [0,30]]);
}

module _base(w= 61.5) {
    rotate([0,0,45])
    translate([-w/2,-w/2,0])
    linear_extrude(height=3)
    square([w, w]);
}

union() {
    translate([-12.25,0.5,30])
     wing();

    translate([12.25,-0.5,30])
    rotate([0,0,180])
    wing();

    translate([0.5,12.25,30])
    rotate([0,0,-90])
    wing();

    translate([-0.5,-12.25,30])
    rotate([0,0,90])
    wing();



    difference() {
    _base();
    scale([1, 1, 1.2])
    translate([0,0,-0.1])
    _base(w= 57);    
    }
}