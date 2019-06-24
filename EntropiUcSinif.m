clc
x=1:20;
dizi=zeros(1,length(x));
dizi=[0.25 0.25 0.25 0.25 0.25 0.45 0.45 0.45 0.45 0.45 0.45 0.45 0.45 0.45 0.3...
    0.3 0.3 0.3 0.3 0.3];

alfa=-2:0.0001:2;
Karci2=zeros(length(alfa),length(x));
 

shannon=0;
for i=1:length(x)
    shannon=shannon+abs(-dizi(i)*(log(dizi(i))/log(2)));
end

for i=1:length(alfa)
  for j=1:length(x)
      Karci2(i,j)=abs(-(dizi(j)^(alfa(i)))*(log(dizi(j))/log(2)));
  end
end

Karci=zeros(length(alfa),1);
for i=1:length(alfa)
    Karci(i)=sum(Karci2(i,:));
end
 
x=1:length(alfa);
plot(x,Karci)
title('Karcý Entropi');
% xlabel('Alfa Deðerleri');
ylabel('Entropi');
hold on
for i=1:length(alfa)
    if shannon==Karci(i)
        j=i;
    end
end
plot(j,Karci(j),'*')

 
