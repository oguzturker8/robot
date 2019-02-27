% Oðuzhan Türker 160202015
function [q,r] = elipsgraf(x0,y0,a,b)

fprintf('Koordinat merkezi = (%d,%d)\n',x0,y0);
fprintf('X eksenindeki uzunlugu : %d , Y eksenindeki uzunlugu : %d\n',a,b);

z = 0:pi/100:2*pi;

x = a * cos(z) + x0;
y = b * sin(z) + y0;


if(nargout == 0 )

plot(x,y);
xlabel('X Ekseni');
ylabel("Y Ekseni");
xlim([x0-a, x0+a]);
ylim([y0-b-2, y0+b]); 
% y limitinde alt tabaný belirlerken deðerden 
% -2 çýkardýðýmýzda pdf deki halini
% elde ediyoruz http://prntscr.com/lex0q0
% http://prntscr.com/lex1gy

elseif(nargout == 1)
    
q=[x,y];

elseif(nargout==2)

 q=x
 r=y;
   
else 
  fprintf('Hatalý parametre\n');
end

end

