# FCS-CEP

Evaluation of System parameters, Control Analysis and Revision in Dynamics of a DC motor. Prepared as a Complex Engineering Problem (CEP)-based end-of-semester project for EE-374 Feedback Control Systems (Spring 2022) as part of BE-Electrical Engineering at NEDUET.

## Project Report
Details of the project are summarised in the [Project Report](https://github.com/moeed17/FCS-CEP/blob/main/Feedback%20Control%20System%20CEP%20Report.pdf).

## Group Members
Ali Aman EE-136

[Hammad Ali Khan EE-139](https://github.com/hammaad2002) 

Syeda Rujab EE-154

[Abdul Moeed EE-170](https://github.com/moeed17)

## Deliverables
### 1) Identify physical parameters (for example via system Identification toolbox on MATLAB or via step response method etc.)

![My Image](https://github.com/moeed17/FCS-CEP/blob/main/Pictures/Picture8.jpg)

### 2) Convert the motor differential equation into Laplace transform (Transfer function)

![My Image](https://github.com/moeed17/FCS-CEP/blob/main/Pictures/Picture2.jpg)

### 3) Plot or obtain different stable responses studied in FCS by adding a control parameter.

![My Image](https://github.com/moeed17/FCS-CEP/blob/main/Pictures/Picture4.jpg)
![My Image](https://github.com/moeed17/FCS-CEP/blob/main/Pictures/Picture5.jpg)
![My Image](https://github.com/moeed17/FCS-CEP/blob/main/Pictures/Picture6.jpg)

### 4) Apply Routh Criteria and find the range of stability for motor speed control.

Through parameter estimation the transfer function developed was used to evaluate Routh's array through which we commented on the absolute stability of the motor and also determined the range of stability which came 
out to be −0.1845 < 𝐾 < +∞

### 5) Plot root locus indicating the all the responses.

![My Image](https://github.com/moeed17/FCS-CEP/blob/main/Pictures/Picture7.jpg)

## Conclusion
Through this CEP we successfully developed the mathematical model of a DC motor and analyzed it. We identified the different parameters of DC motor. 

- Starting off we determined the RPM value of motor itself. We had applied 6V DC step input and we got 210 RPM of motor.

- We also determined the parameters of the motor through parameters estimation on MATLAB.

- We also calculated the transfer function of the DC motor and through that we performed further analysis which included developing the root locus for the motor.

- Developing Routh’s Array through which we commented on the absolute stability of the motor and also determined the range of stability which came 
out to be −0.1845 < 𝐾 < +∞.

- Furthermore, we also obtained different stable responses of the motor through a PID controller.

The different objectives that were assigned to us as a part of this CEP were successfully achieved and we were able to apply our theoretical understanding from the course to the practical implementation.
