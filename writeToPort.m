function writeToPort(data, com)
    fwrite(com, data,'uint8');
end