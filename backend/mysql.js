const mysql = require('mysql');
const pool = mysql.createPool({
    connectionLimit: 15,
    host: '127.0.0.1',
    user: 'root',
    password:'',
    database: 'exp'
});

module.exports = pool;