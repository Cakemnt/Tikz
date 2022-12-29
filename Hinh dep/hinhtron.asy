import geometry;
unitsize(25cm);
defaultpen(fontsize(16pt));

void label(int m, int n, int k=2) {
	label("$\frac{" + string(m) +"}{" + string(n) +"}$", align=k*S, (m/n, 0));
	draw( (m/n, 0)--( m/n, 0.008));
}

point A = (1/2, 0), B = (1, 0), X = (2/3, 0);
real ra = abs(A-B) * abs(A-X) / 2 / abs(B-X);
real rb = abs(A-B) * abs(B-X) / 2 / abs(A-X);
real rx = abs(A-X)^2/4/ra;

circle ca = circle((point)(1/2, ra), ra), cb = circle((point)(1, rb), rb), cx = circle( (point)(2/3, rx), rx);

real fa(real x) { return (2*x^2 - 2*x + 1/2); }
real fb(real x) { return ((x-1)^2/2); }

for (int i = 3; i<20; ++i) {
	point centerA = (i/(2*i-1), fa(i/(2*i-1)));
	draw(circle(centerA, fa(i/(2*i-1))));
}

for (int i = 2; i<20; ++i) {
	point centerB = (i/(i+1), fb(i/(i+1)));
	draw(circle(centerB, fb(i/(i+1))));
}

for (int i = 2; i<6; ++i) { label(i, 2*i-1); }
for (int i = 1; i<8; ++i) { label(i, i+1); }

circle cy = circle((point)(3/4, fb(3/4)), fb(3/4));
circle cz;
cz.r =  1 / (1/cx.r + 1/cy.r + 2*sqrt(1/cx.r/cy.r));
cz.C = (5/7, cz.r);
draw(cz, deepcyan);

label(5, 7);
label(1, 1);

draw(ca^^cx);
draw(arc(cb, relpoint(cb, 0.55), relpoint(cb, 0.78)));

draw((1/2-1/8, 0) -- (1+1/8, 0));

shipout(bbox(5mm, invisible));