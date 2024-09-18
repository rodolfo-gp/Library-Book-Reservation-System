const bcrypt = require('bcrypt');
const { Pool } = require("pg");

const PORT = 8080;
const POOL = new Pool();

const pool = new Pool({
    user: 'oop',
    host: 'localhost',
    database: 'library-system-db',
    password: 'oop',
    port: 5432,
});


const app = require('express')();
app.use((req, res, next) => {
    console.log(`Request received: ${req.method} ${req.url}`);
    next();
  });


//This is returning Available books for rental
//
app.get('/books', async (req, res) => {
    try {
        
        const queries = req.query;
        console.log(queries);
        if(Object.keys(queries).length == 0){
            const result = await pool.query('SELECT id, title, author, genre, rating, place FROM BOOKS WHERE renter is NULL');
            res.status(200).json(result.rows);
        }else{
            //NEDD express VALIDOTR me when sleep deprivation
            booksTitleOrAuthor = queries.search_query;
            console.log(booksTitleOrAuthor);

        }

    } catch (err) {
        
        console.error(err.message);
        res.status(500).send('Server Error');
    }
});


app.listen(
    PORT,
    () => console.log(`It's live on http://localhost:${PORT}`)
)