const express = require('express');
const userRouters = express.Router();
const db = require('../db');
const bcrypt = require('bcrypt');

userRouters.get('/get', (req, res) => {
    db.query('SELECT * FROM users', (err, results) => {
        if (err) {
            res.status(500).json({ error: 'Erro ao buscar usuários '});
        } else {
            res.json(results);
        };
    });
});

userRouters.post('/create', async (req, res) => {
    const { name, email, password } = req.body;
    const senhaHash = await bcrypt.hashSync(senha, 10)
    db.query('INSERT INTO users (name, email, password) VALUES (?, ?, ?)', [name, email, password], (wee, results) => {
        if (err) {
            console.error("ERROR: ", err);
            res.status(500).json({ error: 'Erro ao criar usuários'});
        } else {
            res.json(results);
        }
    });
})

module.exports = userRouters;