<%@page import="java.util.List"%>
<%@page import="br.com.cuponsdesconto.entidades.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Listar Usuarios</title>

  <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/animate.css">
  <link href="css/prettyPhoto.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet" />
  <!-- =======================================================
    Theme Name: Company
    Theme URL: https://bootstrapmade.com/company-free-html-bootstrap-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>

<body>
<%
	List<Usuario> usuarios = (List<Usuario>)request.getAttribute("usuarios");
%>
<%@include file="header.jsp" %>
  <section id="main-slider" class="no-margin">
    <div class="carousel slide">
      <div class="carousel-inner">
        <div class="item active" style="background-image: url(images/slider/bg1.jpg)">
          <div class="container">
            <div class="row slide-margin">
              <div class="col-sm-6">
                <div class="carousel-content">
                  
                  <p class="animation animated-item-2">Todos os usu�rios cadastrados</p>
                  <table style="width:100%">
                  	<tr>
                  		<td>Nome</td>
                  		<td>Email</td>
                  		<td>CPF</td>
                  		<td>Excluir</td>
                  		<td>Atualizar</td>
                  	</tr>
                  	<%
                  		for(Usuario usuario : usuarios){
                  	%>
                  	<tr>
                  		<td><%=usuario.getNome()%></td>
                  		<td><%=usuario.getEmail()%></td>
                  		<td><%=usuario.getCpf()%></td>
                  		<td><a href="UsuarioController?acao=excluir&id=<%=usuario.getId()%>">Excluir</a></td>
                  		<td><a href="UsuarioController?acao=preEditar&id=<%=usuario.getId()%>">Atualizar</a></td>
                  		<td></td>
                  	</tr>
                  	<%}%>
                  </table>
                  
                </div>
              </div>

              <div class="col-sm-6 hidden-xs animation animated-item-4">
                <div class="slider-img">
                  <img src="images/slider/img3.png" class="img-responsive">
                </div>
              </div>

            </div>
          </div>
        </div>
        <!--/.item-->
      </div>
      <!--/.carousel-inner-->
    </div>
    <!--/.carousel-->
  </section>
  <!--/#main-slider-->
  
<%@include file="footer.jsp" %>
</body>

</html>