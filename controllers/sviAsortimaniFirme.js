const connection = require("../dbconfig");
module.exports = sviAsortimaniFirme = (req, res) => {
  connection.query(
    "select * from asortiman where idProizvodjaca='" + req.params.id + "'",
    (err, results) => {
      err
        ? res.send({ status: 1, message: "Greška pri slanju zahtjeva" })
        : results[0]
        ? res.send({ status: 0, results })
        : res.send({ status: 2, message: "Asortimani ne postoje u sistemu" });
    }
  );
};
