const express = require('express');
const app = express();
const router = express.Router();





// TODO: Запрос на логування юзера
// TODO: Запрос на реєстрацію юзера
// TODO: Запрос на редагування юзера

// TODO: Запрос на додавання фотографії
// TODO: Запрос на видалення фотографії
// TODO: Запрос на редагування фотографії

// TODO: Запрос на додавання коментаря
// TODO: Запрос на видалення коментаря
// TODO: Запрос на редагування коментаря


router.get('/', (req, res)=>res.send('HELLO'));









app.use('/', router);
const PORT = process.env.PORT || 5000;
app.listen(PORT, console.log(`Server started on port ${PORT}`));