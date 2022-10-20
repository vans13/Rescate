<%-- 
    Document   : verMascotas
    Created on : 13/10/2022, 10:28:46 p. m.
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Style.css" rel="stylesheet" type="text/css"/>
        <title>VerRegistros</title>
    </head>
    <body>
         <%@ page import="procede.Animal, procede.Gato, procede.Perro, java.util.ArrayList" %>
         <%
             ArrayList<Perro> listaCanina = (ArrayList<Perro>)request.getSession().getAttribute("listaCanina");
            ArrayList<Gato> listaFelina = (ArrayList<Gato>)request.getSession().getAttribute("listaFelina");
         %>
        <h1>Caninos:</h1>
        <br>
        <div>
            <%
                out.println("<table border='1' class="cuadro">");
                out.println("<tr>");
                out.println("<td>Tipo</td>");
                out.println("<td>Nombre</td>");
                out.println("<td>Raza</td>");
                out.println("<td>Color</td>");
                out.println("<td>Edad</td>");
                out.println("<td>Niv. de Entrenamiento</td>");
                        
                out.println("</tr>");
           
                    for(Perro pe: list){
                        out.println("<td>"+pe.getTipo()+"</td>");
                        out.println("<td>"+pe.getNombre()+"</td>");
                        out.println("<td>"+pe.getRaza()+"</td>");
                        out.println("<td>"+pe.getColor()+"</td>");
                        out.println("<td>"+pe.getEdad()+"</td>");
                        out.println("<td>"+pe.getNivelEntrenamiento()+"</td>");
                    }
     
            %>
        </div>
        <br>
        <h1>Felinos:</h1>
        <br>
        <div>
            <%
                out.println("<table border='1' class="cuadro">");
                out.println("<tr>");
                out.println("<td>Tipo</td>");
                out.println("<td>Nombre</td>");
                out.println("<td>Raza</td>");
                out.println("<td>Color</td>");
                out.println("<td>Edad</td>");
                out.println("<td>Toxoplasmosis</td>");
                        
                out.println("</tr>");
           
                    for(Gato ga: list){
                        out.println("<td>"+ga.getTipo()+"</td>");
                        out.println("<td>"+ga.getNombre()+"</td>");
                        out.println("<td>"+ga.getRaza()+"</td>");
                        out.println("<td>"+ga.getColor()+"</td>");
                        out.println("<td>"+ga.getEdad()+"</td>");
                        out.println("<td>"+ga.getToxoplasmosis()+"</td>");
                    }
     
            %>
        </div>
        <div class = cuadro>
        <jsp:include page="Calculos.jsp"></jsp:include>
        </div>
    </body>
</html>
