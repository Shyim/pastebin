<div class="container">
    <div class="ui card fluid snippet-wrapper">
        <div class="content">
            <div class="header">Snippet #{{ .CodeID }}</div>
        </div>
        <div class="content">
            <textarea class="codeeditor col-xs-12" disabled name="editor" data-lang="{{ .Language }}">{{ .Code }}</textarea>
        </div>
    </div>
</div>