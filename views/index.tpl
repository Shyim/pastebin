<div class="card">
	<div class="card-header">
		Neues Snippet anlegen
	</div>
	<form method="post">
		<div class="card-block">
			<textarea class="codeeditor col-xs-12" name="editor"></textarea>
		</div>
		<div class="card-footer">
			<div class="row">
				<div class="col-xs-1">
					<label>Sprache:</label>
				</div>
				<div class="col-xs-2">
					<select class="form-control" name="language">
						<option value="php">PHP</option>
						<option value="javascript">Javascript</option>
						<option value="css">CSS</option>
					</select>
				</div>
				<div class="col-xs-1">
					<label>Ablauf:</label>
				</div>
				<div class="col-xs-2">
					<select class="form-control" name="expiration">
						<option value="300">5 Minuten</option>
						<option value="3600">1 Stunde</option>
						<option value="86400">1 Tag</option>
						<option value="0" selected>Nie</option>
					</select>
				</div>
				<div class="col-xs-6">
					<button class="btn btn-primary pull-right">Erstellen</button>
				</div>
			</div>
		</div>
	</form>
</div>