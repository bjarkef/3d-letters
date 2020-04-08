//$fn = 2;
$fa = 6;
$fs = 0.2;

letter = "Å";

minkowski()
{
    translate([1,1,1]) linear_extrude(height = 15)
        text(letter, font = "Open Sans Extrabold", size = 40);
    sphere(1);
}