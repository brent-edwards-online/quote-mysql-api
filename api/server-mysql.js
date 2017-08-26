var mysql = require('mysql')
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'quotes_api',
  password : 'x,2CUM[Y2}wJW/m~',
  database : 'QuotesApi'
});

connection.connect()

connection.query('SELECT * FROM Quotes', function (err, rows, fields) {
  if (err) throw err

  console.log('The solution is: ', rows)
})

connection.end()