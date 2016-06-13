clc
clear 
close all

z = [0 1 1+2i 3i 0];
shg, clf reset
darkgreen = [0 2/3 0];
set(gcf,'color','white','menubar','none','numbertitle','off','name','Z rotation')
box on
mu = mean(z(1:end-1));
theta = pi/20*4;
omega = exp(i*theta);
z = omega*(z-mu) + mu;
line(real(z),imag(z),'color','r')
axis([-1.5 2.5 -0.5 3.5])
axis square
axis off