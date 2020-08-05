function [flag] = getFromPort(com)
num_RX =0;
    while(1)
        num_RX = get(com,'BytesAvailable');
        if (num_RX ~= 0)
            data=fread(com,num_RX,'uint8');
            disp(data);
            num_RX = 0;
            break;
        end 
    end
    flag = data;
end