import socket

HOST = "127.0.0.1"
PORT = 5000

abc1 = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

abc1.bind(("127.0.0.1", 5000))

print(f"UDP Server listening on {HOST}:{PORT}")


while True:
  
    data, client_address = abc1.recvfrom(1024)    # Receive data

    message = data.decode("utf-8")
    print(f"Received from {client_address}: {message}")

    response = f"Server received: {message}"
    abc1.sendto(response.encode("utf-8"), client_address)

