const questions = require("/media/mano_vikram/Volume_B/MobileAppDevelopment/Flutter/stackoverflow_qna/server/routes/questions.js");

const appRouter = (app, fs) => {
    app.get("/", (request, response) => {
        response.send("Welcome...");
    });

    questions(app, fs);
};

module.exports = appRouter;