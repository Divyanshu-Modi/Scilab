// Make sure console is cleared before script is executed
clc;

// Display Assignment Number as well
disp("Assignment: 2a: Gauss-Jacobi method");

// Display Name, Branch, Roll No
disp('Code by: MODI DIVYANSHU JITENDRA, FE/ELEC, 317');

// Internal usecase variables
// Initializing with 0s
x=0;y=0;z=0;

// Equations Display
disp('The given system of equations is:');
disp('4x+y+3z=17');
disp('x+5y+z=14');
disp('2x-y+8z=12');

disp('Iterations using Gauss-Jacobi method');

// Loop 5 times
for i=1:5
	x1=(17-y-3*z)/4;
	y1=(14-x-z)/5;
	z1=(12-2*x+y)/2;
	disp('iteration: '+string(i)+', x:'+string(x1)+', y:'+string(y1)+', z:'+string(z1));
	x=x1;y=y1;z=z1; // Update vars with new values
end
