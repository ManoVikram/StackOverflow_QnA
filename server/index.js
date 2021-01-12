const express = require("express")
const bodyParser = require("body-parser");
const fs = require("fs");
const { response } = require("express");

const app = express();

// METHOD - 1
var jsonData
fs.readFile("/media/mano_vikram/Volume_B/MobileAppDevelopment/Flutter/stackoverflow_qna/stackoverflowdata.json", "utf8", function (error, data) {
    if (error) {
        throw error;
    }
    // console.log(data);
    jsonData = data;
});

app.get("/", (request, response) => {
    response.send("Hello World");
});

app.get("/api", (request, response) => {
    // response.json(jsonData);
    response.send(JSON.parse(jsonData));
});

app.listen(8080, "192.168.42.210", () => console.log("Server is running at http://192.168.42.210:8080"));


/* // METHOD - 2 => Splited into parts and stored in other files under routes folder
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

const routes = require("./routes/routes.js")(app, fs);

const server = app.listen("8080", "192.168.42.177", () => {
    console.log("Listening on port %s...", server.address().port);
}); */