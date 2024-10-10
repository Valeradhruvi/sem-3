const express = require('express');
const fs = require('fs');


const app = express();

app.get(' ',(req,res)=>{
    fs.readFile('home.html' ,(err,data)=>{
        res.send(data.toString());
    })
});
app.get('/about',(req,res)=>{
    fs.readFile('about.html' ,(err,data)=>{
        res.send(data.toString());
    })
});
app.get('/contact',(req,res)=>{
    fs.readFile('contact.html' ,(err,data)=>{
        res.send(data.toString());
    })
});
app.get('/login',(req,res)=>{
    fs.readFile('login.html' ,(err,data)=>{
        res.send(data.toString());
    })
});

app.listen(3040,(res,req)=>{
    console.log('listening at 3040 port');
})