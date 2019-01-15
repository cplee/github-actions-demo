var express = require('express')
var app = express()

app.get('/', function (req, res) {
  res.set('Content-Type', 'text/plain');
  res.send('Hello World')
})

module.exports = app.listen(8080, function () {
  console.log('Listening on port 8080')
})

