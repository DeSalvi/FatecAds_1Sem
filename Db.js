// db.js
const mysql = require('mysql2/promise');

const pool = mysql.createPool({
  host: 'localhost',      // ou o IP do seu servidor MySQL
  user: 'root',           // ou seu usuário
  password: 'Pedro942901',       // sua senha
  database: 'newvision',  // substitua pelo nome do seu banco
  waitForConnections: true,
  connectionLimit: 10,
});

module.exports = pool;

