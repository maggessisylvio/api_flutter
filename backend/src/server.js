const express = require('express');

const app = express();

app.get('/400', (request, response) => {
    return response.status(400).send('O formato da requisição está incorrto!');
});

app.get('/403', (request, response) => {
    return response.status(403).send('Você não tem autorização para acesso a esse serviço!');
});

app.get('/500', (request, response) => {
    return response.status(500).send('Erro interno no servidor!');
});

app.listen(3333, () => console.log("Serviço rodando na porta 3333!"));