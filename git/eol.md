# End of Line in Windows Git

## In windows, Git should use `crlf` globally, and will be converted it to `lf` on commit

Based on [doc](https://docs.github.com/en/github/using-git/configuring-git-to-handle-line-endings#global-settings-for-line-endings)

```sh
git config --global core.autocrlf true
```

## vscode

no change, **NO NEED** to address as follows, let `git` flow to bind it.

```json
{
  "files.eol": "\n"
}
```

On opening every file there will be a `CRLF` text in the bottom right corner, no worry.

## eslint

**NO NEED** to change. eslint default uses `unix` style, however, it will be overwritten by `prettier` config (if there is any)

## prettier

default use `lf`, in Windows, configure to `"auto"` as follows

```json
{
  "prettier": {
    "endOfLine": "auto"
  }
}
```
