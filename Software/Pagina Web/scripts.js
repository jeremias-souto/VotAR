function obtenerDatos() {
    // Obtenemos los valores desde los campos del formulario
    const nombre = document.getElementById("nombre").value;
    const apellido = document.getElementById("apellido").value;
    const dni = document.getElementById("dni").value;
  
    // Mostramos los datos en la consola del navegador
    console.log("Nombre:", nombre);
    console.log("Apellido:", apellido);
    console.log("DNI:", dni);

    alert("Datos Ingresados Correctamente");
  }
  