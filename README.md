# MATLAB_Serial_Communication
Here I note down one case that Matlab needs to transmit the data to dozens of RTOS system with UART port.

In this case, the first thing create the object of serial port with:

**** 
# 1,  scom1 = serial('COM XX')
COM XX is the number of serial port.
*****
Then we need to set the the port properties including baudrate, input and output buffer sizes, etc.

# 2, fopen(scom1)
  This command is used to open then serial ports.
  
  
# 3, fwrite(com, data,'uint8') 
  This funcion is used to transmit the data with the precision of **uint8** and it also could be others like **char, uint16** etc.
  
# 4, data=fread(com, size, 'uint8');
  size is the number of data you like to get, com is the port number.
  To get the number in the buffer, ther is one function **num = get(com,'BytesAvailable')** useful.
  
# 5, fclose(com)
  This function is necessary when you finish your task. otherwise the port could not be opened by others.
  
# 6, fclose(instrfindall)
  It is one command that quite useful during debug to close all the ports then the ports could be re-open.
  
  
Tips is that in this case I found the **Object** of the ports could be reprented like matrices. 
# comPort(1) = openCom('com3');
# comPort(2) = openCom('com5');
# comPort(3) = openCom('com8');
comPort is one instrument array.


