%suhu=xlsread('DATA.xlsx','Subsurface Temperatur (0-300)','M3:M135');
angin=load('WSPD 0N170W.txt');
%INPUT DATA BOLEH EXCEL ATAU TXT

[n m]=size(angin);
pi=3.14;
dt=1;
k=n/2;

A0=(2/n)*sum(angin);

for i=1:k;
 sumcos=0;
 sumsin=0;
      for j=1:n
        sumcos = sumcos + angin(j)*cos(2*pi*i*j/(n));
        sumsin = sumsin + angin(j)*sin(2*pi*i*j/(n));
      end
      
      ap(i)=(2/n)*sumcos;
	bp(i)=(2/n)*sumsin;
	cp(i)=((ap(i)^2 + bp(i)^2))^0.5;
	frek(i) = i/(n*dt);
	periode(i)=1/frek(i);
end

figure (1)
plot(periode,cp);
