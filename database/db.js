const mysql = require('mysql');

const conexion = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'n0m3l0',
    database: 'libros'
});

conexion.connect((error)=>{
    if(error){
        console.error('El error de conexión es: '+error);
        return
    }
    console.log('¡Conectado con éxito!');
})

module.exports = conexion;