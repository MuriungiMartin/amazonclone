const e = require('express');
const express = require('express');
const mongoose = require('mongoose');

const authRouter = require('./routes/auth');
const port = 3000;
const DB = 'mongodb+srv://Martin:Cephajosh3@cluster0.lxlyqh4.mongodb.net/?retryWrites=true&w=majority';
const app = express();

app.use(express.json());
app.use(authRouter);

//connections

mongoose
.connect(DB)
.then(()=>{
    console.log('Successful');
})
.catch((e)=>{
    console.log(e);
})

app.listen(port, "0.0.0.0", (req, res) => {
    console.log(`Connected at port ${port} hello`);
})