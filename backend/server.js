const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());

// process.on('unhandledRejection', (reason, promise) => {
//     console.error('Unhandled Rejection at:', promise, 'reason:', reason);
//   });
  
//   process.on('uncaughtException', (err) => {
//     console.error('Uncaught Exception:', err);
//     process.exit(1); // Optional: To exit after uncaught exception
//   });
  

// Database connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'W7301@jqir#',
    database: 'binmanagementdb'
});

db.connect((err) => {
    if (err) throw err;
    console.log('Connected to database');
});

// Endpoint to get bin data
app.get('/api/bins', (req, res) => {
    const query = 'SELECT * FROM BIN_Management';
    db.query(query, (err, result) => {
        if (err) throw err;
        res.json(result);
    });
});

// Start server
const PORT = 5000;
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
