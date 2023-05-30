const User = require('../repository/User');

const userRepo = new User();

const create = async (req, res) => {
    try {

        const user = await userRepo.create(req.body) ;
        return res.status(201).json({
            data: user,
            message: "Successfully created a user",
            success : true
        })

    } catch (error) {
        return res.status(501).json({
            data: {
            },
            success: false,
            message: "Not able to create the User"
        })
    }
}
module.exports = {
    create
}