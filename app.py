from http.server import BaseHTTPRequestHandler, HTTPServer
import os

PORT = int(os.getenv("APP_PORT", "8080"))
ENV = os.getenv("APP_ENV", "development")


class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        response = (
            f"Hello from Docker!\n"
            f"Environment: {ENV}\n"
            f"Port: {PORT}\n"
            f"Hostname: {os.uname().nodename}\n"
        )

        self.send_response(200)
        self.send_header("Content-Type", "text/plain")
        self.end_headers()
        self.wfile.write(response.encode())


server = HTTPServer(("0.0.0.0", PORT), Handler)

print(f"Server listening on 0.0.0.0:{PORT}")
server.serve_forever()
