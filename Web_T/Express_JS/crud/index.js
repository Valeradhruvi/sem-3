const express = require('express');
const app = express();
app.use(express.json());

const student =  [];

    //create 
    app.post('/student' , (req,res)=>{
        const {name} = req.body;
        student.push(name);
        res.send(student);
    });

    //read
    app.get('/student/' , (req,res)=>{
        res.send(student);
    });

    //update
    app.put('/student/:index' , (req,res)=>{
       const id = req.params.index;
       const {name} = req.body;

       student[id] = name;
       res.send(student);
    });

    //delete
    app.delete('/student/:index' , (req,res)=>{
        const id  = req.params.index;
        student.splice(id,1);
        res.send(student);
    });


app.listen(4000, (req,res)=>{
    console.log("server listening at 4000");
})  