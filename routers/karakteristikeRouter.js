const karakteristikeLota = require("../controllers/karakteristikeLota");
module.exports = karakteristikeRouter = require("express").Router();
karakteristikeRouter.get("/:id", (req, res) => karakteristikeLota(req, res));
