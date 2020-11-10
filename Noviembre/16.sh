ifconfig | grep 'inet ' | cut -d" " -f10
#el output de grep 'inet' contiene una linea con nueve espacios. 
#inet 172.20.0.1  netmask 255.255.0.0  broadcast 172.20.255.255