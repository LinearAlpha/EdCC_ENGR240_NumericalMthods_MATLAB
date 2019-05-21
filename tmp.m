x = linspace(-10,10,200); 
y = sin(4*x)./exp(x);
plot(x,y)
xlim([0 10])
ylim([-0.4 0.8])
[X,Y,Z] = peaks;
surf(X,Y,Z)
%hold on
xlabel('x-axis')
ylabel('y-axis')
xlim([-inf 0]) 
ylim([-1 inf])
[X,Y,Z] = peaks;
mesh(X,Y,Z)
xlim([-2 2])
ylim([-2 2])
zlim([-5 5])
xlim auto
ylim auto
zlim auto
