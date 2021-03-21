# user settings

## general

```json
{
  "editor.fontSize": 13,
  "editor.tabSize": 2,
  "editor.minimap.enabled": false,
  "editor.wordWrap": "on",
  "editor.insertSpaces": true,
  "editor.detectIndentation": false,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "[go]": {
    "editor.defaultFormatter": "golang.go"
  },
  "editor.formatOnSave": true,
  "editor.formatOnPaste": false,

  "explorer.confirmDelete": false,

  "files.autoSave": "onFocusChange",
  "files.insertFinalNewline": true,

  "git.confirmSync": false,
  "git.autofetch": true,

  "javascript.suggest.autoImports": false,

  "workbench.editor.showTabs": true,
  "workbench.editor.limit.enabled": true,
  "workbench.editor.limit.value": 6,
  "workbench.colorTheme": "Default Light+",
  "workbench.iconTheme": "vscode-icons"
}
```

## app specific

```json
{
  "search.exclude": {
    "**/dist": true
  }
}
```

## OS specific

### Windows

```json
{
  "editor.fontFamily": "Consolas, monospace", // for windows
  "terminal.integrated.shell.windows": "C:\\Program Files\\Git\\bin\\bash.exe"
}
```

## Mac OS

```json
{
  "editor.fontFamily": "Menlo, Monaco, 'Courier New', monospace" // for mac
}
```
