const connection = require("../dbconfig");
module.exports = jedanProizvod = (req, res) => {
  connection.query(
    "SELECT * FROM proizvod join lot on (lotid=lot.id) join asortiman on (idAsortimana=asortiman.id) join proizvodjac on (idProizvodjaca=proizvodjac.id) where idproizvoda='" +
      req.params.id +
      "'",
    (err, results) => {
      err
        ? res.send({ status: 1, message: "Greška pri slanju zahtjeva" })
        : results[0]
        ? res.send({ status: 0, results })
        : res.send({ status: 2, message: "Proizvod ne postoji u sistemu" });
    }
  );
};
