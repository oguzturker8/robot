% Oguzhan Turker 160202015
function cokgengraf

subplot(3,3,1);
kenar=3;
derece=[0:1:361];
c=cosd(derece);
s=sind(derece);
adim=360/kenar;
plot(c(1:adim:361),s(1:adim:361),'w');axis equal
set(gca,'Color','k')
title('n=3','Color','m');
xlabel('x');
ylabel('y')
xlim([-2 2]);
ylim([-2 2]);

subplot(3,3,2);
kenar=4;
derece=[0:1:361];
c=cosd(derece);
s=sind(derece);
adim=360/kenar;
plot(c(1:adim:361),s(1:adim:361),'w');axis equal
set(gca,'Color','k')
title('n=4','Color','m');
xlabel('x');
ylabel('y')
xlim([-2 2]);
ylim([-2 2]);


subplot(3,3,3);
kenar=5;
derece=[0:1:361];
c=cosd(derece);
s=sind(derece);
adim=360/kenar;
plot(c(1:adim:361),s(1:adim:361),'w');axis equal
set(gca,'Color','k')
title('n=5','Color','m');
xlabel('x');
ylabel('y')
xlim([-2 2]);
ylim([-2 2]);


subplot(3,3,4);
kenar=6;
derece=[0:1:361];
c=cosd(derece);
s=sind(derece);
adim=360/kenar;
plot(c(1:adim:361),s(1:adim:361),'w');axis equal
set(gca,'Color','k')
title('n=6','Color','m');
xlabel('x');
ylabel('y')
xlim([-2 2]);
ylim([-2 2]);


subplot(3,3,5);
kenar=8;
derece=[0:1:361];
c=cosd(derece);
s=sind(derece);
adim=360/kenar;
plot(c(1:adim:361),s(1:adim:361),'w');axis equal
set(gca,'Color','k')
title('n=8','Color','m');
xlabel('x');
ylabel('y')
xlim([-2 2]);
ylim([-2 2]);


subplot(3,3,6);
kenar=10;
derece=[0:1:361];
c=cosd(derece);
s=sind(derece);
adim=360/kenar;
plot(c(1:adim:361),s(1:adim:361),'w');axis equal
set(gca,'Color','k')
title('n=10','Color','m');
xlabel('x');
ylabel('y')
xlim([-2 2]);
ylim([-2 2]);


subplot(3,3,7);
kenar=12;
derece=[0:1:361];
c=cosd(derece);
s=sind(derece);
adim=360/kenar;
plot(c(1:adim:361),s(1:adim:361),'w');axis equal
set(gca,'Color','k')
title('n=12','Color','m');
xlabel('x');
ylabel('y')
xlim([-2 2]);
ylim([-2 2]);


subplot(3,3,8);
kenar=18;
derece=[0:1:361];
c=cosd(derece);
s=sind(derece);
adim=360/kenar;
plot(c(1:adim:361),s(1:adim:361),'w');axis equal
set(gca,'Color','k')
title('n=18','Color','m');
xlabel('x');
ylabel('y')
xlim([-2 2]);
ylim([-2 2]);


subplot(3,3,9);
kenar=24;
derece=[0:1:361];
c=cosd(derece);
s=sind(derece);
adim=360/kenar;
plot(c(1:adim:361),s(1:adim:361),'w');axis equal
set(gca,'Color','k')
title('n=24','Color','m');
xlabel('x');
ylabel('y')
xlim([-2 2]);
ylim([-2 2]);


end

