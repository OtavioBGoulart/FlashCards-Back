import express, { Express } from "express";
import dotenv from "dotenv";
import cors from "cors";
import { connectDb } from "config/database";

dotenv.config();

const app = express();
app
    .use(express.json())
    .use(cors())

// export function init(): Promise<Express> {
//     connectDb();
//     return Promise.resolve(app);
// }

// app.get("/", (req, res) => {
//     console.log("Helllo World")
//     res.sendStatus(200);
// })

app.listen(3333, () => console.log("Server is running on port 3333"));
//export default app;