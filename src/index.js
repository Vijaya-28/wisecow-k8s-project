const http = require('http');
const PORT = 4499;
const server = http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Wisecow app is running!');
});
server.listen(PORT, () => console.log(`Server running on port ${PORT}`));
