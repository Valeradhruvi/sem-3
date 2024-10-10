//CRUD operation on 3 Array of objects

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

const faculty = [
    {
        "id":1,
        "name": "Rafael Ebert",
        "ROllnumber": 46552,
      },
      {
        "id":2,
        "name": "Camille Mills",
        "ROllnumber": 22017,
      },
      {
        "id":3,
        "name": "Alexandra Gulgowski",
        "ROllnumber": 31732,
      },
      {
        "id":4,
        "name": "Chad Becker",
        "ROllnumber": 5986,
      },
      {
        "id":5,
        "name": "Sherry Botsford",
        "ROllnumber": 39765,
      }
]

const Laptop = [
    {
        "id":1,
        "name": "MacBook Air",
        "Modelnumber": 123,
      },
      {
        "id":2,
        "name": "HP 4841 abc xyz",
        "Modelnumber": 321,
      },
      {
        "id":3,
        "name": "Chrome Book",
        "Modelnumber": 143,
      },
]


//readStudent
app.get('/students',(req,res)=>{
    res.send(students);
});

//createStudent
app.post('/students',(req,res)=>{
    students.push(req.body);
    res.send("Student created");
});

//updateStudent
app.patch('/students/:index',(req,res)=>{
    const idToEdit = students.findIndex((stu)=>{
        if(stu.id == req.params.index){
            return true;
        }
    });

    students[idToEdit] = req.body;
    res.send("Student Edited");
});

//deleteStudent
app.delete('/students/:index', (req,res)=>{
    const idToEdit = students.findIndex((stu)=>{
        if(stu.id == req.params.index){
            return true;
        }
    });
    students.splice(idToEdit,1);
    res.send("Student deleted");
})


//readFaculty
app.get('/faculty',(req,res)=>{
    res.send(faculty);
});

//createFaculty
app.post('/faculty',(req,res)=>{
    faculty.push(req.body);
    res.send("faculty created");
});

//updateFaculty
app.patch('/faculty/:index',(req,res)=>{
    const idToEdit = faculty.findIndex((fac)=>{
        if(fac.id == req.params.index){
            return true;
        }
    });

    faculty[idToEdit] = req.body;
    res.send("faculty Edited");
});

//deleteFaculty
app.delete('/faculty/:index', (req,res)=>{
    const idToEdit = faculty.findIndex((fac)=>{
        if(fac.id == req.params.index){
            return true;
        }
    });
    faculty.splice(idToEdit,1);
    res.send("faculty deleted");
})


//readLaptop
app.get('/Laptop',(req,res)=>{
    res.send(Laptop);
});

//createLaptop
app.post('/Laptop',(req,res)=>{
    Laptop.push(req.body);
    res.send("Laptop created");
});

//updateLaptop
app.patch('/Laptop/:index',(req,res)=>{
    const idToEdit = Laptop.findIndex((lap)=>{
        if(lap.id == req.params.index){
            return true;
        }
    });

    Laptop[idToEdit] = req.body;
    res.send("Laptop Edited");
});

//deleteLaptop
app.delete('/Laptop/:index', (req,res)=>{
    const idToEdit = Laptop.findIndex((lap)=>{
        if(lap.id == req.params.index){
            return true;
        }
    });
    Laptop.splice(idToEdit,1);
    res.send("Laptop deleted");
})



app.listen(4000,()=>{
    console.log("server listeining at 4000 port");
})