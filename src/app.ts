import express, { Express } from "express";
import dotenv from "dotenv";
import cors from "cors";
import { connectDb } from "config/database";

dotenv.config();

const app = express();
app
    .use(express.json())
    .use(cors())

export function init(): Promise<Express> {
    connectDb();
    return Promise.resolve(app);
}

app.get("/", (req, res) => {
    console.log("Helllo World")
    res.sendStatus(200);
})

export default app;