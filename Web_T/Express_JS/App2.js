const express = require('express');

const app = express();

app.get('/',(req,res)=>{
    res.send("Hello world")
});
app.get('/home',(req,res)=>{
    res.send("welcome to home page")
});
app.get('/about',(req,res)=>{
    res.send("welcome to about page")
});
app.get('/contact',(req,res)=>{
    res.send("welcome to contact page")
});
app.get('/FAQs',(req,res)=>{
    res.send("welcome to FAQs page")
});
app.get('/login',(req,res)=>{
    res.send("welcome to login page")
});

app.listen(3010,(res,req)=>{
    console.log('listening at 3010 port');
})