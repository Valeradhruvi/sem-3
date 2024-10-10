const mongoose = require('mongoose');

const schema = mongoose.Schema({
    Name : String,
    Department : String,
    Subject : String,
    Enroll : Number
});

module.exports = mongoose.model('faculty',schema);