<%-- 
    Document   : RegistraPacientes
    Created on : 1/10/2022, 5:42:51 p. m.
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Refugito</title>
        <link href="Style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form class="form" action="Registra.jsp" method="POST">

            <h2 class="form_title">Registra</h2>
            
            <div class="form_container">
                <label for="tipo">Tipo:</label>
                <select name="tipo" id="tipo" required>
                    <option selected disabled> Seleccione una opción:</option>
                    <option value="canino">Canino</option>
                    <option value="felino">Felino</option>
                </select>
                <br>
            </div>
            <div class="form_container">
                <label for="nombre">Nombre:</label>
                <input class="entrada" type="text" name="nombre" id="Nombre" placeholder="Ingrese aquí">
                <br>
            </div>
            <div class="form_container">
                <label for="raza">Raza:</label>       
                <input class="entrada" type="text" name="raza" id="Raza" placeholder="Ingrese aquí">
                <br>
            </div>
            
            <div class="form_container">
                <label for="color">Color de la mascota:</label>
                <input class="entrada" type="text" name="color" id="color"  placeholder="Ingrese aquí">
                <br>
            </div>
            <div class="form_container">
                <label for="lugar">Edad de la mascota:</label>
                <input class="entrada" type="text" name="edad" id="edad" placeholder="Ingrese aquí">
                <br>
            </div>
            
            <div class="opcion">
                <div id="tipo">
                    <select name="otro" id="tipo" required>
                        <option selected disabled>¿Posee toxoplasmosis?</option>
                        <option>Si</option>
                        <option>No</option>
                  </select>
                </div>
                <br>
                <div id="Canino">
                    <label for="Entrene">Nivel de entrenamiento:</label>
                <input class="entrada" type="text" name="otro" id="entrene" placeholder="Ingrese aquí">
                <br>
                </div>
            </div>
            <div class="form_container">
                <input type="submit" value="Registrar" class="form_cta">
            </div>
            <br>
            <p>Para volver al menú principal, click <a href="index.html">aquí</a></p>
    </form>

        
    </body>
</html>
