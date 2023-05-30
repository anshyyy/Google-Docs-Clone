const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
    name : {
         type : String,
         allowNull : false
    },
    email : {
        type : String,
    },
    profilePhoto : {
        type : String,
    }
},{timestamps:true});

const User = mongoose.model('User',userSchema);
module.exports = User;