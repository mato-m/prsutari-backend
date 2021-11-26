const sviAsortimaniFirme = require("../controllers/sviAsortimaniFirme");
module.exports = asortimanRouter = require("express").Router();
asortimanRouter.get("/:id", (req, res) => sviAsortimaniFirme(req, res));
