import express from "express";
import { Client } from 'pg';


const app = express();

app.get("/", (req, res) => {
    console.log("Helllo World")
    res.sendStatus(200);
})

app.listen(3333, () => console.log("Server is running on port 3333"));