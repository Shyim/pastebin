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
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.5.0/codemirror.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.5.0/mode/javascript/javascript.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.5.0/mode/clike/clike.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.5.0/mode/xml/xml.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.5.0/mode/htmlmixed/htmlmixed.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.5.0/mode/php/php.min.js"></script>
{{ if .Language }}
<script>
	var myCodeMirror = CodeMirror.fromTextArea(document.getElementsByClassName('codeeditor')[0], {
		mode: "{{ .Language }}",
		lineNumbers: true,
		readOnly: true
	});
</script>
{{ else }}
<script src="static/js/custom.js"></script>
{{ end }}
</body>
</html>
