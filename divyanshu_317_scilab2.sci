// Make sure console is cleared before script is executed
clc;

// Display Assignment Number as well
disp('Assignment: 1b: Regula Falsi method');

// Display Name, Branch, Roll No
disp('Code by: MODI DIVYANSHU JITENDRA, FE/ELEC, 317');

// The base equation
A='x³-9x+1=0';

// Avoid any kind of redifinition: Scilab warns about it in console
funcprot(0);

// Function definition
// TODO: allow user to define equation at runtime
deff('z=f(x)','z=x^3-9*x+1');

// Internal usecase variables
a=2;       // Lower limit for finding roots
b=3;       // Upper limit for finding roots
pr=0;      // Initialiazing cached root
cr=1;      // Initial root
i=0;       // Iteration Initialisation
el=0.0001; // Permissible error

disp('Finding roots for equation: '+string(A)+' using Regula Falsi method')

// Loop until condition is satisfied
while(abs(pr-cr)>=el)
pr=cr; // Update the previous root
cr=(a*f(b)-b*f(a))/(f(b)-f(a)); // Update the root
if (f(a)*f(cr)<0);
	b=cr;
elseif (f(b)*f(cr)<0) 
	a=cr;
end
i=i+1; // Update the count
disp('iteration: '+string(i)+': '+string(cr));
end

// Only display upto 4 digits
format("v", 8)

disp('Root of the equation '+string(A)+' correct upto 3 decimal places is x='+string(cr));

// Reset to default
format("v", 10)
