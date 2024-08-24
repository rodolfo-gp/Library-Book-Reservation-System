const bcrypt = require('bcrypt');
const { Pool } = require("pg");

const pool = new Pool({
    user: 'oop',
    host: 'localhost',
    database: 'library-system-db',
    password: 'oop',
    port: 5432,
});




const saltRounds = 14;























async function hashPassword() {
    const h_email = await bcrypt.hash(email, salt);
    const h_pass = await bcrypt.hash(pass, salt);
    console.log(h_email)
    console.log(h_pass); 
}

async function dbQuery(id) {
    await pool.connect();
    const result = await pool.query(`SELECT * FROM USERS WHERE user_id = ${id}`);
    await pool.end();
    return result;
}


//hashPassword();


