import app, { init } from "app";

init().then(() => {
    app.listen(3333, () => console.log("Server is running on port 3333"));
}
)

