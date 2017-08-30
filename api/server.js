var express = require('express'),
  app = express(),
  port = process.env.PORT || 3002,
  mongoose = require('mongoose'),
  Task = require('./models/todoListModel'), //created model loading here
  bodyParser = require('body-parser');

var cors = require('cors');
  
// mongoose instance connection url connection
//mongoose.Promise = global.Promise;
//mongoose.connect('mongodb://localhost/Tododb'); 


app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());

var routes = require('./routes/routes'); //importing route
routes(app); //register the route

//app.use(function(req, res, next) {
//  res.header("Access-Control-Allow-Origin", "*");
//  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
//  next();
//});

app.listen(port);


console.log('todo list RESTful API server started on: ' + port);