const http = require('http');
const app = require('./app');
require('dotenv').config('./.env');

const server = http.createServer(app);

server.listen(process.API_PORT || 3000, () => {
    console.log("Express rodando na porta", process.API_PORT || 3000);
});