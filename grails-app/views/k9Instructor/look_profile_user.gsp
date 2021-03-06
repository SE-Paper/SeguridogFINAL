<!DOCTYPE html>
    <head>
        <meta name="layout" content="indexinstructor"/>
        <title>Seguridog - Instructor</title>
    </head>

    <body>
    	<!-- Page Title -->
    <br><br><br><br><br><br><br><br><br><br><br>
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Información del Usuario</h1>
    				</div>
	    		</div>
		    </div>
    	</div>
	    <!-- main content -->
        <div class="section">
	    	<div class="container">
	    		<div class="row">
	    			<div class="col-sm-6">
	    				<div class="product-image-large">
	                        <img src="${request.contextPath}/purpose/img/users/${user_list.photoUser}">
	    				</div>
	    			</div>
	    			<div class="col-sm-6 product-details">
	    				<h4>${user_list.fullName}</h4>
						<h5>Datos Personales:  </h5>
                        <p><b>Cedula:  </b>${user_list.cedula}</p>
                        <p><b>Fecha Nacimiento:  </b><g:formatDate format="dd-MM-yyyy" date="${user_list.birthDate}"/></p>
                        <p><b>No. Telefónico:  </b>${user_list.cellphone}</p>
						<p><b>Email:  </b>${user_list.eMail}</p>
                        <p><b>Nombre Usuario:  </b>${user_list.loginUser}</p>
                        <p><b>Contraseña:  </b>${user_list.loginPass}</p>
                        <p><b>Tipo Contrato:  </b>${user_list.typeContract}</p>
						<p><b>Fecha Inicio Contrato:  </b><g:formatDate format="dd-MM-yyyy" date="${user_list.dateContract}"/></p>
	    			</div>

	    			<!-- Full Description & Specification -->
	    			<div class="col-sm-12">
	    				<div class="tabbable">
	    					<!-- Tabs -->
							<ul class="nav nav-tabs product-details-nav">
								<li class="active"><a href="#tab1" data-toggle="tab">Formación</a></li>
								<li><a href="#tab2" data-toggle="tab">Labores Realizadas</a></li>
							</ul>
							<!-- Tab Content (Full Description) -->
							<div class="tab-content product-detail-info">
								<div class="tab-pane active" id="tab1">
									<h4>Curso de aprobación</h4>
									<p>
										${user_list.approvedCourse}
									</p>
									<h4>Fecha de Aprobación:</h4>
									<p>
										<g:formatDate format="dd-MM-yyyy" date="${user_list.dateApproved}"/>
									</p>
									<h4>Fecha de Credenciales:</h4>
									<p>
										<g:formatDate format="dd-MM-yyyy" date="${user_list.dateCredentials}"/>
									</p>
									<h4>Especialidad:</h4>
									<p>
										${user_list.specialities}
									</p>
								</div>

								<div class="tab-pane" id="tab2">
									<table>
										<g:each in="${exercise_ability_list}" var="lExercise">

										</g:each>
									</table>
								</div>
							</div>
						</div>
	    			</div>

	    		</div>
			</div>
		</div>
    	<!-- end main content -->
	</body>
</html>
