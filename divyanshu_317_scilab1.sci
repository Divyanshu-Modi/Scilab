// Make sure console is cleared before script is executed
clc;

// Display Assignment Number as well
disp('Assignment: 1a: Newton Raphson method');

// Display Name, Branch, Roll No
disp('Code by: MODI DIVYANSHU JITENDRA, FE/ELEC, 317');

// The base equation
A='x³-5x+3=0';

// Avoid any kind of redifinition: Scilab warns about it in console
funcprot(0);

// Function definition
// TODO: allow user to define equation at runtime
deff('z=f(x)','z=x^3-5*x+3');

// derivative of function
// TODO: Calculate derivative instead of hardcoding
deff('z=df(x)','z=3*x^2-5');

// Internal usecase variables
pr=0;      // Initialiazing cached root
cr=1;      // Initial root
i=0;       // Iteration Initialisation
el=0.0001; // Permissible error

disp('Finding roots of equation: '+string(A)+' using Newton Raphson method')

// Loop until condition is satisfied
while(abs(cr-pr)>=el)
pr=cr; // Update the previous root
cr=cr-(f(cr)/df(cr)); // Update the root
i=i+1; // Update the count
disp('iteration: '+string(i)+': '+string(cr));
end

// Only display upto 4 digits
format("v", 8)

disp('Root of the equation '+string(A)+' correct upto 3 decimal places is x='+string(cr));

// Reset to default
format("v", 10)
