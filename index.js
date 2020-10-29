// Actor didn't act

const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.set('Content-Type', 'text/plain');
});

module.exports = app.listen(8080, () => {
});
