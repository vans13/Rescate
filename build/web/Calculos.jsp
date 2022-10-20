<%-- 
    Document   : Calculos
    Created on : 13/10/2022, 11:22:46 p. m.
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="procede.Animal, procede.Gato, procede.Perro, procede.CalculaPromedio, procede.CalculaTamaño, java.util.ArrayList" %>
        <%
                        ArrayList<Perro> listaCanina = (ArrayList<Perro>)session.getAttribute("listaCanina");
                        ArrayList<Gato> listaFelina = (ArrayList<Gato>)session.getAttribute("listaFelina");
                        if(listaFelina==null){
                             listaFelina=new ArrayList<Gato>();
                             session.setAttribute("listaFelina", listaFelina);
                        }
                        if(listaFelina==null){
                              listaCanina=new ArrayList<Perro>();
                              session.setAttribute("listaCanina", listaCanina);
                        }
                        
                        CalculaTamaño taman = new CalculaTamaño();
                        float[]tama=new float[2];
                        tama=taman.operacion(listaFelina,listaCanina);
                        
                        CalculaPromedio prom = new CalculaPromedio();
                        float[]promedio = new float[1];
                        promedio=prom.operacion(listaFelina, listaCanina);
                    %>
        <div class="cuadro">
                <div class="form_container">
                    
                    <label >Cantidad de Felinos: </label><p><%=tama[0]%></p>
                    <br>
                    <label >Cantidad de Caninos: </label><%=tama[1]%>
                    <br>
                </div>
                <div class="form_container">
                   <label >Promedio de edades: </label><%=promedio[0]%>
                    <br>
                </div>
        </div>
    </body>
</html>
