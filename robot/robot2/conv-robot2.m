% Robotlar ��in Matematik Temelleri 
% 2. �dev
% Polinomlar�n �arp�m�

% sonuc output matrisimiz
%n1 ve n2 ise polinomlar�n dereceleri
function [sonuc]=polinom_carpimi(n1,n2)

switch nargin
    case 0
        disp('Eksik parametre girdiniz. L�tfen fonksiyonun �al��mas� i�in iki parametre giriniz.')
    case 1
        disp('Eksik parametre girdiniz. L�tfen fonksiyonun �al��mas� i�in iki parametre giriniz.')
    case 3
        
    otherwise

% n1 1.polinomun derecesi
% n2 2.polinomun derecesi
% n3 sonuc polinomunun matris boyutu
% n1+1 ve n2+1 matrise x^0'� da dahil etmek i�in
n3=n1+n2+1;
n1=n1+1; 
n2=n2+1; 

% Birinci, ikinci ve sonu� polinomlar�
sonuc = zeros(1,n3);
polinom1 = NaN(1,n1);
polinom2 = NaN(1,n2);

% Polinomlar�n derecelerinin de�erlerini tutan matrisler
derece1 = NaN(1,n1);
derece2 = NaN(1,n2);



% �arp�m i�in katsay�lar�n derecelerini tutan iki matris olu�turuluyor.
% �arp�m esnas�nda derece matrislerinin elemanlar� 
% Birbirleri aras�nda toplan�lacak, ayn� indexdeki polinom
% Matrislerinin elemanlar� da birbirleriyle �arp�lacak.
% �arp�m sonucu, derece matrislerinin elemanlar�n�n toplam� olan dereceye
% yaz�lacak
% �rner�in 3x^2+2x+5 ve -1x^2+x+3 polinomlar� �arp�ls�n.
% 3x^2 ve -x^2 = -3x^4 �arp�l�rken �nce katsay�lar �arp�l�yor.
% 3 x -1 = -3 ard�ndan derece matrisleri toplan�yor
% 2(3x^2) + 2(-x^2) = 4 Ard�ndan i�lem di�er elemanlara da yap�l�yor.
% Ayn� derece de�erine sahip sonuclar toplan�yor.


for i=1:n1
    derece1(1,i)=n1-i;
end

for i=1:n2
    derece2(1,i)=n2-i;
end


disp('Birinci polinomun katsay�lar�n� derecelerine g�re b�y�kten k����e do�ru s�rayla giriniz.')

for i=1:n1
    
    polinom1(1,i)=input(['Birinci polinom ',num2str(n1-i),'. derecenin katsay�s�n� giriniz : ']);
    
end

disp('�kinci polinomun katsay�lar�n� derecelerine g�re b�y�kten k����e do�ru s�rayla giriniz.')
for i=1:n2
    
    polinom2(1,i)=input(['�kinci polinom ',num2str(n2-i),'. derecenin katsay�s�n� giriniz : ']);
    
end

% 1. Polinom
disp('Birinci polinomun katsayilari : ')
disp(polinom1)

% 2. Polinom
disp('�kinci polinomun katsayilari : ')
disp(polinom2)

% Polinom �arp�m�

for i=1:n1
    
    for j=1:n2
        
       % 1. Matrisin elemanlar� ile 2. matrisin
       % elemanlar� �arp�l�yor. �arp�lan katsay�lar�n
       % derece matrisinde bulunan de�erleri birbirleri
       % ile �arp�l�yor. Sonu� matrisinde bulunan indexe 
       % toplanarak yaz�l�yor.
       
       top_kat = polinom1(1,i)*polinom2(1,j);
       top_der = derece1(1,i)+derece2(1,j);
       sonuc(1,n3-top_der)=sonuc(1,n3-top_der)+top_kat;
        
    end
    
end

fprintf('Polinom �arp�m sonucu = ')
for i=1:n3
    % Son terimden sonra + koymamak i�in
    if(n3-i==0)
        fprintf('(%dx^%d)',sonuc(i),n3-i)
    else
    fprintf('(%dx^%d) + ',sonuc(i),n3-i)
    end

   
end

end