g=9.81;
% acceleration due to gravity in m/s^2
m=1;
% mass in kg
k=5*g;
%spring constant in N/m
b=1;
% damping coefficient in 1/s
syms t
syms x(t)
Xo=m*g/k;
diff_eqn = diff(x,t,2)  + (b/m)*diff(x,t,1) + (k/m)*x == g;
v(t) = diff(x);
cond1 = x(0)==4*Xo;
cond2 = v(0)==0;
disp_fun = dsolve(diff_eqn,[cond1,cond2]);
ezplot(disp_fun,[0,20]);
xlabel('time(s)');
ylabel('displacement(m)');