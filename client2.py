import socket
import time

# Server configuration
SERVER_IP = "127.0.0.1"  
SERVER_PORT = 5000
abc2 = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
abc2.bind(("127.0.0.1", 7000))

message = "Hello Server.. i am client two "
while True:
    abc2.sendto(message.encode("utf-8"), (SERVER_IP, SERVER_PORT))
    data, server = abc2.recvfrom(1024)
    print("Reply:", data.decode("utf-8"))
    time.sleep(0.1)
abc2.close()
