<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" >

        <title>Gestionar Permisos</title>
    </head>
    <body>
       <div class="container">
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="permisos" />
            </jsp:include>
            <br>
           <h2>Formulario de Permisos</h2>
            <form action="PermisoControlador" method="post" >
                <input type="hidden" name="id" value="${permiso.id}">
                <div class="form-group">
                    <label for="" class="form-label">Nombre Usuario</label>
                    <select name="id_usuario" class="form-control">
                        <option value="">-- Seleccione -- </option>
                        <c:forEach var="item" items="${lista_usuarios}">
                            <option value="${item.id}" 
                                    <c:if test="${permiso.id_usuario == item.id}">
                                        selected
                                    </c:if>
                                    >
                            ${item.usuario}
                        </option>
                        </c:forEach>
                    </select>
                          
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Rol</label>
                    <select name="id_rol" class="form-control">
                        <option value="">-- Seleccione -- </option>
                        <c:forEach var="item" items="${lista_rols}">
                        <option value="${item.id}"
                                <c:if test="${permiso.id_rol == item.id}">
                                        selected
                                    </c:if>
                            >
                            ${item.rol}
                        </option>
                        </c:forEach>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        
    </body>
</html>
