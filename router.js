const express = require('express');
const router = express.Router();

const conexion = require ('./database/db');

//Mostrar la información
router.get('/', (req, res)=>{
    conexion.query('SELECT * FROM libros', (error, results)=>{
        if(error){
            console.error(error);
        }else{
            res.render('index', {results:results});
        }
    })
})

//Crear regitros (ruta)
router.get('/create', (req, res)=>{
    res.render('create');
})

//Editar registros (ruta)
router.get('/edit/:lib_id', (req, res)=>{
    const lib_id = req.params.lib_id;
    conexion.query('SELECT * FROM libros WHERE lib_id=?', [lib_id], (error, results)=>{
        if(error){
            throw (error);
        }else{
            res.render('edit.ejs', {libros:results[0]});
        }
    });
});


//Eliminar registro
router.get('/delete/:lib_id', (req, res) =>{
    const lib_id = req.params.lib_id;
    conexion.query('DELETE FROM libros WHERE lib_id=?', [lib_id], (error, results)=>{
        if(error){
            throw (error);
        }else{
            res.redirect('/');
        }
    })
})

const crud = require('./controllers/crud');
router.post('/save', crud.save);
router.post('/update', crud.update);

module.exports = router;