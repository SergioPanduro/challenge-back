const express = require('express')
const app = express()
const port = 8080
const bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({ extended: false }))

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", '*'); // update to match the domain you will make the request from
  res.header("Access-Control-Allow-Methods", "GET, PUT, POST, DELETE, PATCH");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, token");
  next();
});

app.use(bodyParser.json());


app.use(require('./routes/index.js'));

app.listen(8080, () => {
  console.log('Api Challenge');
});