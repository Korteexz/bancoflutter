const express = require('express');
const cors = require('cors');
//const userRoutes = require('./routes/userRoutes');
const app = express();
app.use(cors());
app.use(express.json());
//app.use('/usuarios', userRoutes);
app.get('/', (req, res) => {
    res.send('Foi KRL!');
});
app.listen(3000,() => {
    console.log("servidor conectado, porta 666 ");
});
   