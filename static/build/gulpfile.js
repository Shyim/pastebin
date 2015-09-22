var gulp = require('gulp');
var sass = require('gulp-sass');
var uglify = require('gulp-uglify');
var concat = require('gulp-concat');

gulp.task('default', function () {
	gulp.src('pastebin/theme.scss')
		.pipe(sass().on('error', sass.logError))
		.pipe(gulp.dest('../css'));
});

gulp.task('default', function() {
	gulp.src([
		'bower_components/codemirror/lib/codemirror.js',
		'bower_components/codemirror/mode/css/css.js',
		'bower_components/codemirror/mode/clike/clike.js',
		'bower_components/codemirror/mode/xml/xml.js',
		'bower_components/codemirror/mode/php/php.js',
		'bower_components/codemirror/mode/htmlmixed/htmlmixed.js',
		'bower_components/codemirror/mode/javascript/javascript.js',
		'pastebin/custom.js'
	]).pipe(concat('app.js'))
	.pipe(uglify())
	.pipe(gulp.dest('../js'));
});