const conexion = require('../database/db');

exports.save = (req, res)=>{
    const nombreLib = req.body.nombre;
    const autorLib = req.body.autor;
    const editorialLib = req.body.editorial;
    const descripcionLib = req.body.descripcion;
    //console.log(nombreLib + "-" + autorLib + "-" + editorialLib);
    //console.log(descripcionLib);
    conexion.query('INSERT INTO libros SET ?', {lib_nombre:nombreLib, lib_autor:autorLib, lib_editorial:editorialLib, lib_descripcion:descripcionLib}, (error, results)=>{
        if(error){
            console.log(error);
        }else{
            res.redirect('/')
        }
    });
};

exports.update = (req, res)=>{
    const lib_id = req.body.lib_id;
    const nombreLib = req.body.nombre;
    const autorLib = req.body.autor;
    const editorialLib = req.body.editorial;
    const descripcionLib = req.body.descripcion;
    conexion.query('UPDATE libros SET ? WHERE lib_id = ?', [{lib_nombre:nombreLib, lib_autor:autorLib, lib_editorial:editorialLib, lib_descripcion:descripcionLib}, lib_id], (error,results)=>{
        if(error){
            console.log(error);
        }else{
            res.redirect('/')
        }
    });
};