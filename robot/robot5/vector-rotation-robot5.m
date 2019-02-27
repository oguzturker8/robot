% Oguzhan Turker 160202015
function donusum

p = input('Vektoru giriniz (x,y) :  ');

z = 0:pi/100:2*pi;
yaricap = sqrt(p(1)^2 + p(2)^2);
x = yaricap * cos(z) ;
y = yaricap * sin(z) ;

%cember
plot(x,y,'b');
xlabel('x ekseni');
ylabel('y ekseni');
xlim([-1*yaricap yaricap*1]);
ylim([-1*yaricap yaricap*1]);
hold on;
%eksenler
plot([-1*yaricap yaricap],[0 0],'b');
plot([0 0],[-1*yaricap yaricap],'b');
%vektor
plot([0 p(1)],[0 p(2)],'r');

aci = input('Donusum acisini giriniz :  ');
%donusum vektoru
hold off;

for i = 1:aci
hold off;
plot([0 p(1)],[0 p(2)],'r');
hold on;
th = i*pi/180 ;
R = [cos(th) sin(th) ;-sin(th) cos(th)] ;
v2 = p*R;
plot([0 v2(1)],[0 v2(2)],'g');
plot(x,y,'b');
plot([-1*yaricap yaricap],[0 0],'b');
plot([0 0],[-1*yaricap yaricap],'b');
pause(1);
end

end

