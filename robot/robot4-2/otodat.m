function  otodat



load oto.dat
Pozisyon = oto(:,1)
Zaman = oto(:,2)
% plot(Zaman,Pozisyon);
[x,y] = meshgrid(Zaman, Pozisyon)
z = x+y
mesh(z)
xlabel('Zaman (sn)'); ylabel('Pozisyon (m)');
zlabel('Hiz (m/sn)'); title('Bir otonun 3D Hýzlanma grafiði');
end

