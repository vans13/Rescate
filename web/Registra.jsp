<%-- 
    Document   : Registra
    Created on : 13/10/2022, 9:31:06 p. m.
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" java.util.ArrayList" %>
<%@page import=" procede.Perro, procede.Animal, procede.Gato" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrico</title>
        <link href="Style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@ page import="procede.Animal, procede.Gato, procede.Perro, java.util.ArrayList" %>
        <%
            ArrayList<Perro> listaCanina = (ArrayList<Perro>)request.getSession().getAttribute("listaCanina");
            ArrayList<Gato> listaFelina = (ArrayList<Gato>)request.getSession().getAttribute("listaFelina");
            ArrayList lista=(ArrayList())request.getSession().getAttribute("lista");
            
            String tipo = request.getParameter("tipo");
            String nombre=request.getParameter("nombre");
            String raza=request.getParameter("raza");
            String color = request.getParameter("color");
            int edad = Integer.parseInt(request.getParameter("edad"));
            String otro="";
            if(tipo=="felino"){
               otro=request.getParameter("felino");
           }else if(tipo=="canino"){
               otro=request.getParameter("canino");
           }
           
           if(tipo=="felino"){
                if(listaFelina==null){
                     listaFelina=new ArrayList<Gato>();
                     listaFelina.add(new Gato(tipo,nombre,raza,color,edad,otro));
                     session.setAttribute("listaFelina", listaFelina);
                }else{
                     listaFelina.add(new Gato(tipo,nombre,raza,color,edad,otro));
                }
           }else{
                   if(listaCanina==null){
                     listaCanina=new ArrayList<Perro>();
                     listaCanina.add(new Perro(tipo,nombre,raza,color,edad,otro));
                     session.setAttribute("listaCanina", listaCanina);
                }else{
                     listaCanina.add(new Perro(tipo,nombre,raza,color,edad,otro));
                }
           }
             if(lista==null){
                     lista=new ArrayList();
                    if(tipo=="Canino"){
                        lista.add(new Perro(tipo,nombre,raza,color,edad,otro));
                    }else if(tipo=="felino"){
                        lista.add(new Gato(tipo,nombre,raza,color,edad,otro));
                    }
                     session.setAttribute("lista", lista);
                }else{
                     if(tipo=="Canino"){
                        lista.add(new Perro(tipo,nombre,raza,color,edad,otro));
                    }else if(tipo=="felino"){
                        lista.add(new Gato(tipo,nombre,raza,color,edad,otro));
                    }
                }

        %>
        <h1>Mascota registrada Exitosamente</h1>
        <p>Menú principal, click <a href="index.html">aquí</a></p>
    </body>
</html>
