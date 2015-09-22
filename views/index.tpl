<form method="post">
    <div class="ui card fluid snippet-wrapper">
        <div class="content">
            <div class="header">Neues Snippet anlegen</div>
        </div>
        <div class="content">
            <textarea class="codeeditor fluid" name="editor"></textarea>
            <div class="row">
                <div class="ui equal width grid options-wrapper">
                    <div class="column pln">
                        Sprache:
                        <select class="ui fluid dropdown" name="language">
                            <option value="php">PHP</option>
                            <option value="javascript">Javascript</option>
                            <option value="css">CSS</option>
                        </select>
                    </div>
                    <div class="column prn">
                        Ablauf:
                        <select class="ui fluid dropdown" name="expiration">
                            <option value="300">5 Minuten</option>
                            <option value="3600">1 Stunde</option>
                            <option value="86400">1 Tag</option>
                            <option value="0" selected>Nie</option>
                        </select>
                    </div>
                </div>
                <button class="ui primary button">Erstellen</button>
            </div>
        </div>
    </div>
</form>