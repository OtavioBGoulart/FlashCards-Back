import express from "express";
import { Client } from 'pg';

// Configurações da conexão
const client = new Client({
    user: 'postgres',      // Substitua pelo seu usuário
    host: 'localhost',         // Host do banco de dados
    database: 'FlashCards',     // Nome do banco de dados
    password: '1212Abcd',     // Substitua pela sua senha
    port: 5432,                // Porta padrão do PostgreSQL
});

// Conecta ao banco de dados
client.connect()
    .then(() => {
        console.log('Conectado ao banco de dados');

        // Executa uma consulta
        return client.query('SELECT NOW()'); // Exemplo de consulta para obter a data e hora atual
    })
    .then((res) => {
        console.log('Hora atual:', res.rows[0]);
    })
    .catch((err) => {
        console.error('Erro ao conectar ao banco de dados', err);
    })
    .finally(() => {
        // Encerra a conexão
        client.end();
    });


const app = express();

app.get("/", (req, res) => {
    console.log("Helllo World")
    res.sendStatus(200);
})

app.listen(3333, () => console.log("Server is running on port 3333"));