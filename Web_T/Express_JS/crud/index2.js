//CRUD operation on Array of objects

const bodyParser = require('body-parser');
const express = require('express');
const app = express();

app.use(bodyParser.urlencoded());

const students = [
    {
        "id":1,
        "name": "Rafael Ebert",
        "ROllnumber": 46552,
        "SPI": "224205034",
      },
      {
        "id":2,
        "name": "Camille Mills",
        "ROllnumber": 22017,
        "SPI": "391021390",
      },
      {
        "id":3,
        "name": "Alexandra Gulgowski",
        "ROllnumber": 31732,
        "SPI": "138681553",
      },
      {
        "id":4,
        "name": "Chad Becker",
        "ROllnumber": 5986,
        "SPI": "859994985",
      },
      {
        "id":5,
        "name": "Sherry Botsford",
        "ROllnumber": 39765,
        "SPI": "653681850",
      }
]


//read
app.get('/students',(req,res)=>{
    res.send(students);
});

//create
app.post('/students',(req,res)=>{
    students.push(req.body);
    res.send("Student created");
});

app.patch('/students/:index',(req,res)=>{
    const idToEdit = students.findIndex((stu)=>{
        if(stu.id == req.params.index){
            return true;
        }
    });

    students[idToEdit] = req.body;
    res.send("Student Edited");
});

app.delete('/students/:index', (req,res)=>{
    const idToEdit = students.findIndex((stu)=>{
        if(stu.id == req.params.index){
            return true;
        }
    });
    students.splice(idToEdit,1);
    res.send("Student deleted");
})


app.listen(3000,()=>{
    console.log("server listeining at 3000 port");
})