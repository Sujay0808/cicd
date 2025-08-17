const express = require("express");
const app = express();
const PORT = 5000;

app.get("/", (req, res) => {
  res.send("🚀 Hello from Node.js App with CI/CD + Docker + EC2!");
});

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
