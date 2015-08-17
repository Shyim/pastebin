var editor = document.getElementsByClassName('codeeditor')[0];

var myCodeMirror = CodeMirror.fromTextArea(editor, {
	mode: "php",
	lineNumbers: true,
});

$('select[name="language"]').on('change', function() {
	var lang = $('select[name="language"] option:selected').attr('value');
	myCodeMirror.toTextArea()
	myCodeMirror = CodeMirror.fromTextArea(editor, {
		mode: lang,
		lineNumbers: true,
	});
})