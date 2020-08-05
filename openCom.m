function [Com_Num] = openCom(a)
    scom1 = serial(a);%%%%%%%%%%%%%%%%open com5
    scom1.Terminator = 'CR';
    scom1.BaudRate = 115200;
    scom1.InputBufferSize = 1024;
    scom1.OutputBufferSize = 1024;
    %%scom1.Timeout = tout;
    scom1.RequestToSend ='on';
    fopen(scom1);
    
    Com_Num = scom1;
end