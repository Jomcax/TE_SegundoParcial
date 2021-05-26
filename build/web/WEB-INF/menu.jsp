<%
    String opcion =  request.getParameter("opcion");
%>
<nav class="navbar navbar-dark bg-secondary">
    <a style="color: white" class="navbar-toggler"><span class="navbar-toggler-icon"></span>  Segundo Parcial Emergentes </a>
    <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a style="color: black" class="nav-link <%= (opcion.equals("usuarios") ?  "active" : "") %>" href="UsuarioControlador">Usuarios</a>
                </li>
                <li class="nav-item">
                    <a style="color: black" class="nav-link <%= (opcion.equals("roles") ?  "active" : "") %>" href="RolControlador">Roles</a>
                </li>
                <li class="nav-item">
                    <a style="color: black" class="nav-link <%= (opcion.equals("permisos") ?  "active" : "") %>" href="PermisoControlador">Permisos</a>
                </li>
    </ul>
</nav>