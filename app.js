// app.js

const express = require('express');
const app = express();
const port = 3000;

// Simple route to test the app
app.get('/', (req, res) => {
  res.send('Thanks Eui For Your Effort');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
