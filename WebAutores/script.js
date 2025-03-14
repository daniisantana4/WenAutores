function cargarFormularioAutores() {
    document.getElementById("contenido").innerHTML = `
        <h2>Insertar Autor</h2>
        <form action="insertarAutores.jsp" method="post">
            <label>Nombre</label> 
            <input type="text" name="nombreAutor" required>

            <label>Nacionalidad</label> 
            <input type="text" name="nacionalidad" required>

            <label>Fecha de Nacimiento</label> 
            <input type="date" name="fechaNacimiento" required>

            <button type="submit">Insertar</button>
            <button type="button" onclick="cargarInicio()">Volver</button>
        </form>
    `;

    document.getElementById("titulo").innerText = "Insertar Autor";
}


function cargarListadoAutores() {
    document.getElementById("contenido").innerHTML = `
        <h2>Listado de Autores</h2>
        <p>Aquí se mostrará la lista de autores registrados.</p>
    `;

    document.getElementById("titulo").innerText = "Listado de Autores";
}

function cargarInicio() {
    document.getElementById("contenido").innerHTML = `
        <p>Bienvenido al sistema de gestión de autores y libros.</p>
    `;

    document.getElementById("titulo").innerText = "Inicio";
}
