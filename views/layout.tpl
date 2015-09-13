<!DOCTYPE html>
<html>
<head>
	<title>{{ .pageTitle }} - paste.shyim.de</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="/static/css/theme.css">
</head>
<body>
<header class="container">
	<nav class="navbar navbar-inverse">
		<a class="navbar-brand" href="#">Pastebin</a>
		<ul class="nav nav-pills">
			<li class="nav-item {{ if eq .pageTitle "Home" }}active{{ end }}">
				<a class="nav-link" href="/">
					Home
				</a>
			</li>
		</ul>
	</nav>
</header>
<main class="container">
	{{.LayoutContent}}
</main>
<script src="/static/js/app.js"></script>
</body>
</html>
