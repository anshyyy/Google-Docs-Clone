const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const morgan = require('morgan');
const { PORT } = require('../src/config/serverConfig');
const ApiRoutes = require('./routes/index');
const cors = require('cors');
app.use(cors());
const connect = require('../src/config/database');
const UserRepository = require('../src/repository/User');
const user = new UserRepository();


const setUpAndStartServer = async () => {
    app.use(bodyParser.json());
    app.use(morgan('combined'));
    app.use(bodyParser.urlencoded({extended:true}));
    app.use('/api',ApiRoutes);
    await connect();
    app.listen(PORT, async ()  => {
        console.log(`Server Started on ${PORT}`);
    });
}

setUpAndStartServer();