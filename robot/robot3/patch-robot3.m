%Oðuzhan Türker 160202015
function  cizim(A,B,C,D,H,R)

a1=A(1,1);
a2=A(1,2);
a3=A(1,3);

b1=B(1,1);
b2=B(1,2);
b3=B(1,3);

c1=C(1,1);
c2=C(1,2);
c3=C(1,3);

d1=D(1,1);
d2=D(1,2);
d3=D(1,3);


k1=abs(sqrt(a1-d1^2)+(a2-d2^2)+(a3-d3^2)); %X Ekseni
k2=abs(sqrt(a1-b1^2)+(a2-b2^2)+(a3-b3^2)); %Y Ekseni
k3=H; %Z Ekseni
xlabel('X Ekseni');
ylabel("Y Ekseni");
zlabel("Z Ekseni");
xlim([a1-k1 b1+k1]);
ylim([a2-k2 d2+k2]);
zlim([a3-k3 a3+2*k3]);

if(nargin <=4 || nargin >=7)
    disp("Hatalý parametre giriþi.");
elseif(nargin == 5)
patch([a1,b1,c1,d1],[a2,b2,c2,d2],[a3,b3,c3,d3],"red");
hold on;
patch([a1,b1,c1,d1],[a2,b2,c2,d2],[a3+H,b3+H,c3+H,d3+H],"red");
patch([a1,a1,d1,d1],[a2,a2,d2,d2],[a3,a3+H,d3+H,d3],"red");
patch([a1,a1,b1,b1],[a2,a2,b2,b2],[a3,a3+H,b3+H,b3],"red");
patch([b1,b1,c1,c1],[b2,b2,c2,c2],[b3,b3+H,c3+H,c3],"red");
patch([c1,c1,d1,d1],[c2,c2,d2,d2],[c3,c3+H,d3+H,d3],"red");    
elseif(nargin==5 || R.length==1)
patch([a1,b1,c1,d1],[a2,b2,c2,d2],[a3,b3,c3,d3],R);
hold on;
patch([a1,b1,c1,d1],[a2,b2,c2,d2],[a3+H,b3+H,c3+H,d3+H],R);
patch([a1,a1,d1,d1],[a2,a2,d2,d2],[a3,a3+H,d3+H,d3],R);
patch([a1,a1,b1,b1],[a2,a2,b2,b2],[a3,a3+H,b3+H,b3],R);
patch([b1,b1,c1,c1],[b2,b2,c2,c2],[b3,b3+H,c3+H,c3],R);
patch([c1,c1,d1,d1],[c2,c2,d2,d2],[c3,c3+H,d3+H,d3],R);     
else    
r1=R(1,1);
r2=R(1,2);
r3=R(1,3);
r4=R(1,4);
r5=R(1,5);
r6=R(1,6);    
patch([a1,b1,c1,d1],[a2,b2,c2,d2],[a3,b3,c3,d3],r1);
hold on;
patch([a1,b1,c1,d1],[a2,b2,c2,d2],[a3+H,b3+H,c3+H,d3+H],r2);
patch([a1,a1,d1,d1],[a2,a2,d2,d2],[a3,a3+H,d3+H,d3],r3);
patch([a1,a1,b1,b1],[a2,a2,b2,b2],[a3,a3+H,b3+H,b3],r4);
patch([b1,b1,c1,c1],[b2,b2,c2,c2],[b3,b3+H,c3+H,c3],r5);
patch([c1,c1,d1,d1],[c2,c2,d2,d2],[c3,c3+H,d3+H,d3],r6);   
end


end

