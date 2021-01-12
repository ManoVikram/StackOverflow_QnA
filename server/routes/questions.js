const questions = (app, fs) => {
    const dataFile = "/media/mano_vikram/Volume_B/MobileAppDevelopment/Flutter/stackoverflow_qna/stackoverflowdata.json";

    app.get("/api", (request, respone) => {
        fs.readFile(dataFile, "utf8", (error, data) => {
            if (error) {
                throw error;
            }
            respone.send(JSON.parse(data));
        });
    });
}

module.exports = questions;