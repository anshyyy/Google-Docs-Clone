const User = require('../models/user');

class UserRepository {
     create = async(data) => {
        console.log(data);
        try {
            const newUser = await User.create({
                name : data.displayName,
                email : data.email,
                profilePhoto : data.photoUrl
            })
            return newUser;
        } catch (error) {
             throw error;
        }
     }
}

module.exports = UserRepository;