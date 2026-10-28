const express = require('express');
const app = express();
const PORT = process.env.PORT || 8080;
const ENV = process.env.APP_ENV || 'development';

app.get('/', (req, res) => {
  res.json({
    message: "DevOps Capstone App je úspešne spustená!",
    environment: ENV,
    timestamp: new Date()
  });
});

app.get('/health', (req, res) => {
  res.status(200).send('OK');
});

app.listen(PORT, () => {
  console.log(`Server beží na porte ${PORT} v prostredí ${ENV}`);
});
