% Robotlar Ýçin Matematik Temelleri 
% 2. Ödev
% Polinomlarýn Çarpýmý

% sonuc output matrisimiz
%n1 ve n2 ise polinomlarýn dereceleri
function [sonuc]=polinom_carpimi(n1,n2)

switch nargin
    case 0
        disp('Eksik parametre girdiniz. Lütfen fonksiyonun çalýþmasý için iki parametre giriniz.')
    case 1
        disp('Eksik parametre girdiniz. Lütfen fonksiyonun çalýþmasý için iki parametre giriniz.')
    case 3
        
    otherwise

% n1 1.polinomun derecesi
% n2 2.polinomun derecesi
% n3 sonuc polinomunun matris boyutu
% n1+1 ve n2+1 matrise x^0'ý da dahil etmek için
n3=n1+n2+1;
n1=n1+1; 
n2=n2+1; 

% Birinci, ikinci ve sonuç polinomlarý
sonuc = zeros(1,n3);
polinom1 = NaN(1,n1);
polinom2 = NaN(1,n2);

% Polinomlarýn derecelerinin deðerlerini tutan matrisler
derece1 = NaN(1,n1);
derece2 = NaN(1,n2);



% Çarpým için katsayýlarýn derecelerini tutan iki matris oluþturuluyor.
% Çarpým esnasýnda derece matrislerinin elemanlarý 
% Birbirleri arasýnda toplanýlacak, ayný indexdeki polinom
% Matrislerinin elemanlarý da birbirleriyle çarpýlacak.
% Çarpým sonucu, derece matrislerinin elemanlarýnýn toplamý olan dereceye
% yazýlacak
% Örnerðin 3x^2+2x+5 ve -1x^2+x+3 polinomlarý çarpýlsýn.
% 3x^2 ve -x^2 = -3x^4 çarpýlýrken önce katsayýlar çarpýlýyor.
% 3 x -1 = -3 ardýndan derece matrisleri toplanýyor
% 2(3x^2) + 2(-x^2) = 4 Ardýndan iþlem diðer elemanlara da yapýlýyor.
% Ayný derece deðerine sahip sonuclar toplanýyor.


for i=1:n1
    derece1(1,i)=n1-i;
end

for i=1:n2
    derece2(1,i)=n2-i;
end


disp('Birinci polinomun katsayýlarýný derecelerine göre büyükten küçüðe doðru sýrayla giriniz.')

for i=1:n1
    
    polinom1(1,i)=input(['Birinci polinom ',num2str(n1-i),'. derecenin katsayýsýný giriniz : ']);
    
end

disp('Ýkinci polinomun katsayýlarýný derecelerine göre büyükten küçüðe doðru sýrayla giriniz.')
for i=1:n2
    
    polinom2(1,i)=input(['Ýkinci polinom ',num2str(n2-i),'. derecenin katsayýsýný giriniz : ']);
    
end

% 1. Polinom
disp('Birinci polinomun katsayilari : ')
disp(polinom1)

% 2. Polinom
disp('Ýkinci polinomun katsayilari : ')
disp(polinom2)

% Polinom Çarpýmý

for i=1:n1
    
    for j=1:n2
        
       % 1. Matrisin elemanlarý ile 2. matrisin
       % elemanlarý çarpýlýyor. Çarpýlan katsayýlarýn
       % derece matrisinde bulunan deðerleri birbirleri
       % ile çarpýlýyor. Sonuç matrisinde bulunan indexe 
       % toplanarak yazýlýyor.
       
       top_kat = polinom1(1,i)*polinom2(1,j);
       top_der = derece1(1,i)+derece2(1,j);
       sonuc(1,n3-top_der)=sonuc(1,n3-top_der)+top_kat;
        
    end
    
end

fprintf('Polinom çarpým sonucu = ')
for i=1:n3
    % Son terimden sonra + koymamak için
    if(n3-i==0)
        fprintf('(%dx^%d)',sonuc(i),n3-i)
    else
    fprintf('(%dx^%d) + ',sonuc(i),n3-i)
    end

   
end

end