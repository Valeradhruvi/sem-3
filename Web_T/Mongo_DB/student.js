const mongoose = require('mongoose');

const schema = mongoose.Schema({
    RollNo : Number,
    Name : String,
    age : Number,
    email : String
});

module.exports = mongoose.model('student',schema)