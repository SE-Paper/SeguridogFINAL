<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>SeguriDog</title>
		<meta name="login" content="">
		<meta name="viewport" content="width=device-width">
		<link rel="shortcut icon" href="${assetPath(src: 'dog.png')}" type="image/x-icon">
		<link rel="stylesheet" href="${request.contextPath}/purpose/css/bootstrap.min.css">
		<link rel="stylesheet" href="${request.contextPath}/purpose/css/icomoon-social.css">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

		<link rel="stylesheet" href="${request.contextPath}/purpose/css/leaflet.css" />
		<!--[if lte IE 8]>
			<link rel="stylesheet" href="${request.contextPath}/purpose/css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="${request.contextPath}/purpose/css/main.css">

		<script src="${request.contextPath}/purpose/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
	</head>

	<body>
		<!--[if lt IE 7]>
        <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

		<!-- Navigation & Logo-->
		<div class="mainmenu-wrapper">
			<div class="container">
				<div class="menuextras">
					<div class="extras">
						<ul>
							<li><a href="loginUser.gsp">Login</a></li>
						</ul>
					</div>
				</div>
				<nav id="mainmenu" class="mainmenu">
					<ul>
						<li class="logo-wrapper"><img src="${request.contextPath}/purpose/img/SeguriDog-logo.png" alt="Multipurpose Twitter Bootstrap Template"></li>
						<li class="active">
							<a href="index.html">Inicio</a>
						</li>
						<li>
							<a href="features.html">Informaci�n</a>
						</li>
						<li>
							<a href="credits.html">Cr�ditos</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- main content -->
		<div class="container">
          <h2>Usuarios Registrados</h2>
          <table class="table table-bordered table-hover">
            <thead>
              <tr>
                  <th>Cedula</th>
                  <th>Nombre</th>
                  <th>Apellido</th>
                  <th>Usuario</th>
                  <th>Contraseña</th>
                  <th>Fecha Nacimiento</th>
                  <th>Telefono</th>
                  <th>Correo electronico</th>
                  <th>Tipo de contrato</th>
                  <th>Fecha de contrato</th>
                  <th>Tipo de usuario</th>
                  <th>Nombre completo</th>
             </tr>
            </thead>
            <tbody>
            <g:each in="${users}" var="user">
              <tr>
                  <td>${user.cedula}</td>
                  <td>${user.firstName}</td>
                  <td>${user.lastName}</td>
                  <td>${user.loginUser}</td>
                  <td>${user.loginPass}</td>
                  <td>${user.birthDate}</td>
                  <td>${user.cellphone}</td>
                  <td>${user.eMail}</td>
                  <td>${user.typeContract}</td>
                  <td>${user.dateContract}</td>
                  <td>${user.typeUsers}</td>
                  <td>${user.fullName}</td>
              </tr>
            </g:each>
            </tbody>
          </table>
        </div>

		<!-- end main content -->

		<!-- Footer -->
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="footer-copyright">&copy; 2013 mPurpose. All rights reserved.</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Javascripts -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="${request.contextPath}/purpose/js/jquery-1.9.1.min.js"><\/script>')</script>
		<script src="${request.contextPath}/purpose/js/bootstrap.min.js"></script>
		<script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
		<script src="${request.contextPath}/purpose/js/jquery.fitvids.js"></script>
		<script src="${request.contextPath}/purpose/js/jquery.sequence-min.js"></script>
		<script src="${request.contextPath}/purpose/js/jquery.bxslider.js"></script>
		<script src="${request.contextPath}/purpose/js/main-menu.js"></script>
		<script src="${request.contextPath}/purpose/js/template.js"></script>
	</body>
</html>