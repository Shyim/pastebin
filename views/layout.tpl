<!DOCTYPE html>
<html>
<head>
	<title>{{ .pageTitle }} - paste.shyim.de</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.1.4/semantic.min.css">
    <link rel="stylesheet" href="/static/css/theme.css">
</head>
<body>
<div class="ui inverted menu">
    <div class="ui container">
        <div href="#" class="header item">
            Paste
        </div>
        <a href="/" class="item{{ if eq .pageTitle "Home" }} active{{ end }}">Home</a>
    </div>
</div>
<main class="ui container">
	{{.LayoutContent}}
</main>
<div class="ui inverted vertical footer segment">
    <div class="ui center aligned container">
        <div class="ui horizontal inverted small divided link list">
            <a class="item" href="#">Über Paste</a>
        </div>
    </div>
</div>
<script src="//code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.1.4/semantic.min.js"></script>
<script src="/static/js/app.js"></script>
</body>
</html>
