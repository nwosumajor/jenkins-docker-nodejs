const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('Hello! This app was built with Jenkins & Docker on AWS!');
});

app.listen(PORT, () => {
  console.log(`App running on port ${PORT}`);
});
