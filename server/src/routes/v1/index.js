const express = require('express');
const router = express.Router();
const userController = require('../../controllers/userController');



router.post('/signUp',userController.create);
router.get('/test',(req,res)=> {
     return res.status(200).json({
        message : "OK"
     });
});

module.exports = router;
