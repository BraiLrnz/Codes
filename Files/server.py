import socket
from flask import Flask, render_template, request

app = Flask(__name__)

# Configuración del servidor de chat
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(('127.0.0.1', 1234))
s.listen(3)

c, address = s.accept()
print("Conexión recibida desde {} ".format(address))

banner = "Hola, bienvenido a mi chat!!"
c.send(banner.encode())

nombre_servidor = "Servidor: "

# Configuración de las rutas web
@app.route('/')
def index():
    return render_template('chat.html')

@app.route('/enviar', methods=['POST'])
def recibir_mensaje():
    mensaje = request.form['mensaje']
    c.send("{}{}".format(nombre_servidor, mensaje).encode())
    return "Mensaje enviado al servidor de chat"

# Bucle principal del servidor de chat
while True:
    msg = c.recv(2048).decode()
    if msg.lower() == 'quit':
        break
    print("{}{}".format(nombre_servidor, msg))

# Cierre de conexiones
c.close()
s.close()

if __name__ == '__main__':
    app.run('127.0.0.1', 5000, debug=True)
