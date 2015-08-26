var gulp = require('gulp');
var sass = require('gulp-ruby-sass');

gulp.task('default', function () {
	return sass('pastebin/theme.scss', {
		style: 'compressed'
	})
		.on('error', sass.logError)
		.pipe(gulp.dest('../css'));
});