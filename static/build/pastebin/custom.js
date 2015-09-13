$(function() {
	var editor = document.getElementsByClassName('codeeditor')[0];
	if($('.codeeditor').data('lang')) {
		CodeMirror.fromTextArea(editor, {
			mode: $('.codeeditor').data('lang'),
			lineNumbers: true,
			viewportMargin: Infinity
		});
	} else {
		var myCodeMirror = CodeMirror.fromTextArea(editor, {
			mode: "php",
			lineNumbers: true,
			viewportMargin: Infinity
		});

		$('select[name="language"]').on('change', function() {
			var lang = $('select[name="language"] option:selected').attr('value');
			myCodeMirror.toTextArea();
			myCodeMirror = CodeMirror.fromTextArea(editor, {
				mode: lang,
				lineNumbers: true,
				viewportMargin: Infinity
			});
		});
	}
})