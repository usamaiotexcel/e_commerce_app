
const express = require("express");
const mongoose=require('mongoose');
const authRouter =require('./routes/auth');
const PORT =3000;
const DB="mongodb+srv://usamagkr7:Usama%404418@cluster0.6k3lh3x.mongodb.net/?retryWrites=true&w=majority";
const app = express();
app.use(express.json());
app.use(authRouter);
mongoose.connect(DB).then(()=>{
console.log('successfully connected');
}).catch((e)=>{
    console.log(e);
});
app.listen(PORT,"4.4.1.8",() => {
console.log(`connected at port ${PORT}`);
 });