console.log("hola");

let inputNombre = document.getElementById("nombre");
let inputApellido = document.getElementById("apellido");
let inputEmail = document.getElementById("email");
let inputCantidad = document.getElementById("cantidad");
let inputCategoria = document.getElementById("categoria");
let botonResumen = document.getElementById("resumen");
let botonBorrar = document.getElementById("borrar");

let total = 0;
let advertencia = "Ingresar ";

botonResumen.addEventListener('click', (e) => {
    e.preventDefault();

    emailRegex = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;

    if("" == inputNombre.value){
        document.getElementById('advertencia').innerHTML = advertencia + "nombre";
    } else if("" == inputApellido.value){
        document.getElementById('advertencia').innerHTML = advertencia + "apellido";
    } else if("" == inputEmail.value){
        document.getElementById('advertencia').innerHTML = advertencia + "email";
    } else if(!emailRegex.test(inputEmail.value)){
        document.getElementById('advertencia').innerHTML = advertencia + "un email valido";
    } else if("" == inputCantidad.value){
        document.getElementById('advertencia').innerHTML = advertencia + "cantidad de entradas";
    } else {
        document.getElementById('advertencia').innerHTML = "";
        if("Estudiante" == inputCategoria.value){
            total = parseInt(inputCantidad.value) * 40
            document.getElementById('total').innerHTML = total;
        }
        if("Trainee" == inputCategoria.value){
            total = parseInt(inputCantidad.value) * 100
            document.getElementById('total').innerHTML = total;
        }
        if("Junior" == inputCategoria.value){
            total = parseInt(inputCantidad.value) * 170
            document.getElementById('total').innerHTML = total;
        }
    }

});

botonBorrar.addEventListener('click', (e) => {
    total = 0;
    document.getElementById('total').innerHTML = total;
})
