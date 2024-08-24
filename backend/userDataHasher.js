const bcrypt = require('bcrypt');
const { Pool } = require("pg");

const saltRounds = 13;
let lastUserID = 10;

const pool = new Pool({
    user: 'oop',
    host: 'localhost',
    database: 'library-system-db',
    password: 'oop',
    port: 5432,
});

(async () => {
    console.log('INSERT INTO USERS (user_id, fname, lname, age, email, pass, salt, h_email, h_pass) VALUES')
    for (let userID = 1; userID <= lastUserID; userID += 1) {
        let ender = ',';
        if(userID == lastUserID){ender = ';'}
        let newSalt = bcrypt.genSaltSync(saltRounds);
        let result = await dbQuery(userID);  
        let h_email = bcrypt.hashSync(result.rows[0].email, newSalt);
        let h_pass = bcrypt.hashSync(result.rows[0].pass, newSalt);
        console.log(`\t(${result.rows[0].user_id}, '${result.rows[0].fname}', '${result.rows[0].lname}', ${result.rows[0].age}, '${result.rows[0].email}', '${result.rows[0].pass}', '${newSalt}', '${h_email}', '${h_pass}')${ender} `);
    
    }

    
    await pool.end();
})();

async function dbQuery(id) {
    const result = await pool.query(`SELECT * FROM USERS WHERE user_id = ${id}`);
    return result;
}
