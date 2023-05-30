const mongoose = require('mongoose');
const {DBURL} = require('../config/serverConfig');



const connect = async() => {
    await mongoose.connect(DBURL);
}

module.exports = connect;