require("dotenv").config();
const path = require("path");
const express = require("express");
const asortimanRouter = require("./routers/asortimanRouter");
const lotRouter = require("./routers/lotRouter");
const karakteristikeRouter = require("./routers/karakteristikeRouter");
const proizvodRouter = require("./routers/proizvodRouter");
const napomenaRouter = require("./routers/napomenaRouter");
const app = express();
app.use(express.json());
const port = process.env.PORT;
app.use("/api/asortimani", asortimanRouter);
app.use("/api/lotovi", lotRouter);
app.use("/api/karakteristike", karakteristikeRouter);
app.use("/api/proizvod", proizvodRouter);
app.use("/api/napomena", napomenaRouter);
app.listen(port, () => {
  console.log("Server started on port " + port);
});
