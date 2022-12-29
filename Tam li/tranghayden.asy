unitsize(1cm);
//== Đường ngang
int n=12;
for(int i =1;i<=n;++i){
	draw((1,i)--(n,i),gray+0.2cm);
	draw((i,1)--(i,n),gray+0.2cm);}
//== chấn trắng
for(int i =2;i<=n-1;++i){
	for(int j=2;j<=n-1;++j){
		fill(circle((i,j),0.16),white);}}
shipout(bbox(0mm,white,Fill(black)));