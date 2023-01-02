// Make sure console is cleared before script is executed
clc;

// Display Assignment Number as well
disp("Assignment: 2b: Gauss-Seidel method");

// Display Name, Branch, Roll No
disp('Code by: MODI DIVYANSHU JITENDRA, FE/ELEC, 317');

// Internal usecase variables
// Initializing with 0s
x=0;y=0;z=0;

// Equations Display
disp('The given system of equations is:');
disp('43x+2y+3z=91');
disp('3x+53y+z=60');
disp('2x-4y+49z=49');

disp('Iterations using Gauss-Seidel method');

// Loop 5 times
for i=1:5
	// Reuse vars
	x=(91-2*y-3*z)/43;
	y=(60-3*x-z)/53;
	z=(49-2*x+4*y)/49;
	disp('iteration: '+string(i)+', x:'+string(x)+', y:'+string(y)+', z:'+string(z));
end
