const { MongoClient, ObjectId } = require('mondodb');
require('dotenv').config('./.env');

const client = new MongoClient(process.env.MONGO_URI);

exports.connectDB = async () => {
    try {
        await client.connect();
        console.log("Conectando ao MongoDB");
    } catch (err) {
        console.error("Erros ao conectar:", err)
    };
};