const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const morgan = require('morgan');
const { PORT } = require('../src/config/serverConfig');
const ApiRoutes = require('./routes/index');

const setUpAndStartServer = () => {

    app.use(bodyParser.json());
    app.use(morgan('combined'));
    app.use(bodyParser.urlencoded({extended:true}));
    app.use('/api',ApiRoutes);


    app.listen(PORT, () => {
        console.log(`Server Started on ${PORT}`)
    });
}

setUpAndStartServer();