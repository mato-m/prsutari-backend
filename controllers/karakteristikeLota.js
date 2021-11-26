const connection = require("../dbconfig");
module.exports = karakteristikeLota = (req, res) => {
  connection.query(
    "select * from karakteristikelota where idLota='" +
      req.params.id +
      "' order by vrijemeDodavanja desc",
    (err, results) => {
      err
        ? res.send({ status: 1, message: "Greška pri slanju zahtjeva" })
        : results[0]
        ? res.send({ status: 0, results })
        : res.send({
            status: 2,
            message: "Karakteristike ne postoje u sistemu",
          });
    }
  );
};
