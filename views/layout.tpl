<!DOCTYPE html>
<html>
<head>
	<title>{{ .pageTitle }} - paste.shyim.de</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.5.0/codemirror.min.css">
	<link rel="stylesheet" href="/static/css/style.css">
</head>
<body>
<header>
	<div class="container">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle"></button>
					<a class="navbar-brand" href="#">Pastebin</a>
				</div>

				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="{{ if .Language }}active{{ end }}">
							<a href="/">
								Home
							</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</header>
<main>
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
