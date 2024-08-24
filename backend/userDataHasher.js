const bcrypt = require('bcrypt');
const saltRounds = 12
;


const email = 'jd@example.com'
const pass = 'qwe'
const salt = '$2b$10$F6EMRvmi1yz5WnoT937fLO'

async function hashPassword() {
    const h_email = await bcrypt.hash(email, salt);
    const h_pass = await bcrypt.hash(pass, salt);
    console.log(h_email)
    console.log(h_pass); 
}

hashPassword();


// bcrypt.genSalt(saltRounds, function(err, salt) {
//     console.log(salt);
//     bcrypt.hash(myPlaintextPassword, salt, function(err, hash) {
//         console.log(hash);
//     });
// });
