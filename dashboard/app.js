import express from "express";
const app = express();

app.get("/", (req, res) => {
  res.send("<h2>🛡️ Self-Healing Infrastructure Dashboard</h2><p>Prometheus metrics active and being monitored...</p>");
});

app.listen(8080, () => console.log("Dashboard running on http://localhost:8080"));
