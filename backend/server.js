const app = require('express')();
const PORT = 8080;


app.get('/books', (req, res) => {

    res.status(200).send({
        tshirt: 'gay',
        size: 'large'
    })
});



app.listen(
    PORT,
    () => console.log(`It's live on http://localhost:${PORT}`)
)