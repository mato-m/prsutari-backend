const connection = require("../dbconfig");
module.exports = napomeneProizvoda = (req, res) => {
  connection.query(
    "select * from napomene where idproizvoda='" +
      req.params.id +
      "' order by vrijemeDodavanja desc",
    (err, results) => {
      err
        ? res.send({ status: 1, message: "Greška pri slanju zahtjeva" })
        : results[0]
        ? res.send({ status: 0, results })
        : res.send({
            status: 2,
            message: "Napomene ne postoje u sistemu",
          });
    }
  );
};
