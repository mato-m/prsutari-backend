const jedanProizvod = require("../controllers/jedanProizvod");
const sviProizvodiLota = require("../controllers/sviProizvodiLota");
module.exports = proizvodRouter = require("express").Router();
proizvodRouter.get("/:id", (req, res) => sviProizvodiLota(req, res));
proizvodRouter.get("/one/:id", (req, res) => jedanProizvod(req, res));
