const express = require('express');
const userRouters = express.Router();
const db = require('../db');

userRouters.get('/', (req, res) => {
    db.query('SELECT * FROM users', (err, results) => {
        if (err) {
            res.status(500).json({ error: 'Erro ao buscar usuários '});
        } else {
            res.json(results);
        };
    });
});

module.exports = userRouters;