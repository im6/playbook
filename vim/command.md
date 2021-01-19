# Command

## NERDTree

[ref](https://medium.com/usevim/nerd-tree-guide-bb22c803dcd2)

## netrw

[ref](https://shapeshed.com/vim-netrw/)
[official config variable doc](http://vimdoc.sourceforge.net/htmldoc/pi_netrw.html)

```sh
:Vexplore
:Explore
```

### shortcut

[ref 0](https://gist.github.com/danidiaz/37a69305e2ed3319bfff9631175c5d0f)
[ref 1](https://gist.github.com/t-mart/610795fcf7998559ea80)

```sh
-: go upper directory
d: mkdir
D: delete dir
p: preview file, while keeping cursor still in netrw
enter: move cursor from netrw to the file itself.
```

## tab

### create new tab

```sh
vim -p file0 file1 file2
:tabnew <filename>
```

### nagivate between tabs

- gt, gT: switch back and forth

## split

[ref](https://thoughtbot.com/blog/vim-splits-move-faster-and-more-naturally)

### create new split

```sh
vsp ~/<filePath>
vs <filePath>
```

### nagivate between splits

```sh
<Ctrl-w>+<hjkl>: navigate
<Ctrl-w>+c: close current split
<Ctrl-w>+n: new split
```

## Terminal

```sh
<Ctrl-w> + <shift + n>: pause the terminal, click `i` to return
```
