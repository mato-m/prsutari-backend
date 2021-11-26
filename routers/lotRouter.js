const dodajLot = require("../controllers/dodajLot");
const sviLotoviAsortimana = require("../controllers/sviLotoviAsortimana");
module.exports = lotRouter = require("express").Router();
lotRouter.get("/:id", (req, res) => sviLotoviAsortimana(req, res));
lotRouter.post("", (req, res) => dodajLot(req, res));
