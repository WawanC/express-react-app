import express from "express";
import path from "path";

const app = express();

app.use(express.static(path.join(__dirname, "..", "client", "dist")));

app.get("/api", (req, res) => {
  res.json({
    data: "DUMMY DATA"
  });
});

app.use("/", (req, res) => {
  res.sendFile(path.join(__dirname, "..", "client", "dist", "index.html"));
});

app.listen(8000, () => {
  console.log("Listening on port 8000");
});
