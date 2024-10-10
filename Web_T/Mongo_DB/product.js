const mongoose = require('mongoose');

const schema = mongoose.Schema({
    Name : String,
    idNO : Number
});

module.exports = mongoose.model('product',schema);