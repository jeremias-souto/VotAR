var mysql = require('mysql2');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Jeremias",
  database: "votar"
});

con.connect(function(err) {
  if (err) throw err;
  con.query("SELECT * FROM personas WHERE dni = 21213098", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });
});