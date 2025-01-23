import express from "express";
const app = express();

const PORT = process.env.PORT || 4001;

app.get("/", (req, res) => {
  return res
    .status(201)
    .json({ success: true, message: "your inside the docker container" });
});

app.listen(PORT, () => console.log(`server is running on PORT : ${PORT}`));
