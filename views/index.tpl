<div class="container">
	<div class="panel panel-primary">
		<div class="panel-heading">
			Neues Snippet anlegen
		</div>
		<form method="post">
			<div class="panel-body">
				<textarea class="codeeditor col-xs-12" name="editor"></textarea>
			</div>
			<div class="panel-footer">
				<div class="row">
					<div class="col-xs-1">
						<label>Sprache:</label>
					</div>
					<div class="col-xs-2">
						<select class="form-control" name="language">
							<option value="php">PHP</option>
							<option value="javascript">Javascript</option>
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
							<option value="0">Nie</option>
						</select>
					</div>
					<div class="col-xs-6">
						<button class="btn btn-primary pull-right">Erstellen</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>