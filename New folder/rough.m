clc, clear, close all
%                    DC motor transfer function
%                                K
%                         tf = -----
%                               s+a
K_t = 1 ;
K_b = 1 ;
R_m = 1 ;
J   = 1 ;
B   = 1 ;
OrderOfTf = 1           ;
K = K_t / ( R_m*J )     ;
A = ( B/J + ( K_b*K ) ) ;
b = [0 K]               ; %feedforward coefficients 
a = [1 A]               ; %feedback coefficients
sys1 = tf ( b , a )     ; 
figure ,
step_response1 = step ( sys1 ) ; %assumed step response by assuming 
                                 %values of constants in transfer function
                                 %studied in class
plot ( step_response1 )
grid on
xlabel ( 'Time' )
ylabel ( 'Speed(RPM)' )
%random data generated from here
c1 = ones ( 1 , 9000 )'     ; %column 1 of data
c2 = rand ( size ( c1 ) )   ; %column 2 of data
fs = 9600*2                 ; %sampling frequency from baudrate of arduino
ts = 1/fs                   ; %sampling time period
% data = xlsread ( 'data.csv' )         ; %for importing data from excel
% Ts = data ( 2 , 1 ) - data ( 1 , 1 )  ; % assuming uniform time grid
obj1 = iddata ( c1 , c2 , ts )    ; %basic object for dealing with signals 
                                    %in the toolbox
sys2 = tfest ( obj1 , OrderOfTf ) ;
figure ,
step_response2 = step ( sys2 )    ; 
plot ( step_response2 )
grid on
xlabel ( 'Time' )
ylabel ( 'Speed(RPM)' )
figure ,
subplot ( 211 )
plot ( c2 ) %printing column 2 data to see if data has noise in it 
grid on
ylabel ( 'Recorded data From arduino' )
xlabel ( 'Time(t)' )
B = 1/10*ones ( 900 , 1 )      ; % 1st argument of ones specify the no. of past 
                                     % values used for the avg of Moving 
                                     % Average filter
filteredOp = filter ( B , 1 , c2 ) ; % Moving average filter of 900 points
subplot ( 212 )
plot ( filteredOp ) 
grid on
ylabel ( 'Recorded data From arduino' )
xlabel ( 'Time(t)' )
obj2 = iddata ( c1 , filteredOp , ts ) ; %basic object for dealing with 
                                         %signals in the toolbox
sys3 = tfest ( obj2 , OrderOfTf )      ;
figure ,
step_response3 = step ( sys3 ) ;
plot ( step_response3 )
grid on
xlabel ( 'Time' )
ylabel ( 'TF1Speed(RPM)' )
figure ,
subplot ( 311 )
bode ( sys1 ) , grid on
subplot ( 312 )
bode ( sys2 ) , grid on
subplot ( 313 )
bode ( sys3 ) , grid on