//FOR VER 1.2+
//everything is in mil - if you're using cura, shrink to 2.54%

$fn = 32;
$pcbwidth = 4900;
$pcbheight = 4900;
$pcbbottomgap = 160;
$keysupporty = 575;
$keysupportthickness = 50;
$fmsupporty = 1925;
$fmsupportwidth = 1300;
$fmsupportthickness = 50;
$holefactor = 50;
$thickness = 60;

difference() {
    union(){
        //solids
        cube([$pcbwidth, $pcbheight, $thickness]);
        translate([0,$keysupporty-($keysupportthickness/2),$thickness]) cube([$pcbwidth, $keysupportthickness, $pcbbottomgap]);
        translate([$pcbwidth-$fmsupportwidth,$fmsupporty,$thickness]) cube([$fmsupportwidth, $fmsupportthickness, $pcbbottomgap]);
        translate([1485, 1621, $thickness]) cylinder(h=$pcbbottomgap, d=100, center=false);
        translate([2700, 3500, $thickness]) cylinder(h=$pcbbottomgap, d=100, center=false);
        translate([1000, 3200, $thickness]) cylinder(h=$pcbbottomgap, d=100, center=false);
        translate([1300, 4750, $thickness]) cylinder(h=$pcbbottomgap, d=100, center=false);
        translate([3050, 4750, $thickness]) cylinder(h=$pcbbottomgap, d=100, center=false);
        translate([175, 2125, $thickness]) cylinder(h=$pcbbottomgap, d=100, center=false);
        translate([4175, 3975, $thickness]) cylinder(h=$pcbbottomgap, d=100, center=false);
        translate([4600, 3450, $thickness]) cylinder(h=$pcbbottomgap, d=100, center=false);
        translate([175, 175, 0]) cylinder(d=350,h=$thickness+$pcbbottomgap);
        translate([$pcbwidth-175, 175, 0]) cylinder(d=350,h=$thickness+$pcbbottomgap);
        translate([$pcbwidth-175, $pcbheight-175, 0]) cylinder(d=350,h=$thickness+$pcbbottomgap);
        translate([175, $pcbheight-175, 0]) cylinder(d=350,h=$thickness+$pcbbottomgap);
    }
    
    //kl+logo 1550,2025 3475,3175
    cubexy(1550,2100,3375,3175,0,$thickness);
    //aliensoldier 1325,3750 3675,4100
    cubexy(1325,3850,3575,4100,0,$thickness);
    //DC 1875,4325 2575,4900
    cubexy(1825,4425,2475,4850,0,$thickness);
    //url 1775,1125 3225,1300
    cubexy(1775,1200,3150,1325,0,$thickness);
    //ver 200,2475 625,3800
    cubexy(200,2475,625,3800,0,$thickness);
    //serno
    cubexy(1425,100,3475,400,0,$thickness);
    
    posipostBL();
    posipostBR();
    posipostTL();
    posipostTR();
    
    translate([175, 175, 0]) cylinder(d=150,h=$thickness+$pcbbottomgap);
    translate([$pcbwidth-175, 175, 0]) cylinder(d=150,h=$thickness+$pcbbottomgap);
    translate([$pcbwidth-175, $pcbheight-175, 0]) cylinder(d=150,h=$thickness+$pcbbottomgap);
    translate([175, $pcbheight-175, 0]) cylinder(d=150,h=$thickness+$pcbbottomgap);
    
    translate([175, 175, 0]) cylinder(d=250,h=125);
    translate([$pcbwidth-175, 175, 0]) cylinder(d=250,h=125);
    translate([$pcbwidth-175, $pcbheight-175, 0]) cylinder(d=250,h=125);
    translate([175, $pcbheight-175, 0]) cylinder(d=250,h=125);
}
module cubexy(x1,y1,x2,y2,zo,z) {
    translate([x1-$holefactor,y1-$holefactor,zo]) cube([(x2-x1)+($holefactor*2),(y2-y1)+($holefactor*2),z]);
}

//i gave myself a headache trying to think of the math to do this with rotation, so i made this mess instead, which will no doubt transfer my headache to the reader
module posipostBL() {
    difference() {
        cube([350/2,350/2,$thickness]);
        translate([(350/2),(350/2),0]) cylinder(d=350,h=$thickness,center=false);
    }
}
module posipostBR() {
    difference() {
        translate([$pcbwidth-(350/2),0,0]) cube([350/2,350/2,$thickness]);
        translate([$pcbwidth-(350/2),(350/2),0]) cylinder(d=350,h=$thickness,center=false);
    }
}
module posipostTR() {
    difference() {
        translate([$pcbwidth-(350/2),$pcbheight-(350/2),0]) cube([350/2,350/2,$thickness]);
        translate([$pcbwidth-(350/2),$pcbheight-(350/2),0]) cylinder(d=350,h=$thickness,center=false);
    }
}
module posipostTL() {
    difference() {
        translate([0,$pcbheight-(350/2),0]) cube([350/2,350/2,$thickness]);
        translate([(350/2),$pcbheight-(350/2),0]) cylinder(d=350,h=$thickness,center=false);
    }
}