<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<div id="itbCabecera" role="banner">
		<a href="${createLink(uri: '/')}"> <img
			src="${resource(dir: 'images', file: 'itbCabecera.png')}"
			alt="itbHelpDesk" />
		</a>
		<div class="bienvenida">
			<p>
				<sec:ifLoggedIn>
					<g:message code="springSecurity.login.bienvenida" />
					<sec:username />
				</sec:ifLoggedIn>
			</p>
		</div>
		<div class="sesion">
			<p>
				<sec:ifLoggedIn>
					<g:link url="principalUsuario">Inicio</g:link> |<g:link url=""> Mis datos</g:link>  | <g:link
						url="../logout">Salir</g:link>
				</sec:ifLoggedIn>
			</p>
		</div>
	</div>

	<g:layoutBody />
	<div class="footer" role="contentinfo">
		<p>
			Calle Prolongación Manco Segundo 115 San Miguel, Lima-1, Perú /
			Telf.: 993056792<br /> © Copyright ITB Consulting SAC. Derechos
			Reservados.
		</p>
	</div>
	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>
	<g:javascript library="application" />
	<r:layoutResources />
</body>
</html>