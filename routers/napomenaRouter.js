const napomeneProizvoda = require("../controllers/napomeneProizvoda");
module.exports = napomenaRouter = require("express").Router();
napomenaRouter.get("/:id", (req, res) => napomeneProizvoda(req, res));
