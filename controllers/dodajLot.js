const connection = require("../dbConfig");
const uuid = require("uuid");
module.exports = dodajLot = (req, res) => {
  const id = uuid.v4();
  connection.query(
    "insert into lot (id) values ('" + id + "')",
    (err, results) => {
      if (err)
        res.send({
          status: 1,
          message: "Greška pri dodavanju lota",
        });
      else {
        if (results.affectedRows > 0) {
          res.send({
            status: 0,
            message: "Lot uspješno dodat",
          });
        } else
          res.send({
            status: 1,
            message: "Lot nije dodat",
          });
      }
    }
  );
};
