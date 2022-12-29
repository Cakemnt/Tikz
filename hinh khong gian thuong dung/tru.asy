unitsize(1cm);
import three;
currentprojection=orthographic(3,4,1,zoom=.8);
real r=2, h=5;
transform3 t=scale(r,r,h);
draw(t*unitcylinder,yellow+opacity(.5));
draw("$r$",align=N,O--(0,r,0),red+dashed);
draw("$h$",align=E,O--(0,0,h),red+dashed);