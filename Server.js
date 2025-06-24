// server.js
const express = require('express');
const cors = require('cors');
const db = require('./db');

const app = express();
app.use(cors());
app.use(express.static('public'));

app.get('/usuarios', async (req, res) => {
  try {
    const [rows] = await db.query(`
      SELECT nome, re, nivelAcesso, dataCadastro, statusUsuario 
      FROM Usuario
    `);
    res.json(rows);
  } catch (err) {
    console.error('Erro ao buscar dados:', err);
    res.status(500).json({ error: 'Erro ao acessar o banco' });
  }
});

const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Servidor rodando em http://localhost:${PORT}`);
});
