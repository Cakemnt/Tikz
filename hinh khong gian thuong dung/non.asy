import macros3D;
import solids;
size(6cm);
currentprojection = orthographic(.7,2,0.5);
defaultpen(fontsize(9pt));
dotfactor =3;
pen an = linetype("6 8");
real R=2.4, h=3.5; // Ban kinh day, chieu cao
draw(cone(O,R,h,axis=Z,n=1));
//---- Cac diem
triple
A = R*dir(90,50), B = R*dir(90,-60),
Sp=h*Z, I =A/2+B/2, O=(0,0,0);
path3 p=Sp--A--B--cycle;
//---- Hinh chieu cua O tren SI
triple K = planeproject(p,normal(p))*O;
//---- Cac dan an
draw(A--B^^Sp--B^^Sp--O--I--cycle^^O--K,an);
draw(Sp--A); drawrightangle(K,I,O,radius=2.6mm);
dot("$S$",Sp,N); dot("$A$",A,dir(-90)); dot("$B$",B,NW);
dot("$O$",O,S); dot("$I$",I,SW); dot("$K$",K,dir(195));