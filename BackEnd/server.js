// server.js
const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({ extended: true }));

app.post('/contact', (req, res) => {
    res.send(`Nombre: ${req.body.nombre}, Email: ${req.body.email}, Mensaje: ${req.body.mensaje}`);
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}/`);
});
