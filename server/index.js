
const express = require("express");
const mongoose=require('mongoose');
const authRouter =require('./routes/auth');
const PORT =3000;
const DB="mongodb+srv://usamagkr7:UsamaGkr@cluster0.wag99x5.mongodb.net/?retryWrites=true&w=majority";
const app = express();
app.use(express.json());
app.use(authRouter);
mongoose.connect(DB).then(()=>{
console.log('successfully connected');
}).catch((e)=>{
    console.log(e);
});
app.listen(PORT,"0.0.0.0",() => {
console.log(`connected at port ${PORT}`);
 });