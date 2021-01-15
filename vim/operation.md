# operation

## cursor

- hjkl: basic movement
- gg: move to top
- G: move to bottom
- 5G: move
- ^,0
- e
- {}: move up/right by paragraph
- zz: center the cursor to the screen
- wb: move left/right by word, delimit by character
- WB: jump word by space only
- e,E,
- t!: jump right before first `!` in the line
- tc: jump right before first copy of `c`, click `;` for next search
- f!: jump on first `!` in the line
- ^$: jump to start/end of line
- %: jump to the corresponding closing symbol
- \*: jump to all other reference word, click `n` to find next

## edit

### Insert

- ia: insert before or after the cursor
- IA: go to start/end of the line and go to insert mode
- oO: add newline below or above, and insert

### copy/paste

- d: cut
- y: yank(copy)
- yy: copy the line
- p: paste

### delete

- d: delete the visual selected are
- D: delete from cursor to the rest of the line
- dd: delete current line
- d2w: delete 2 words
- 3dd: delete current and 2 more line
- d&: delete everything between symbol pairs
- d}: delete the whole paragrap
- dw: delete a word
- x: delete one letter
- 10x: delete right 10 letters

### change

- cw: change word, remove current word
- C: change from cursor to the end of the line
- ct}: change until `}`, userful to replace function body
- ~: revert the capital on the letter
- r: replace the letter
- R: replace and eating the rest of the line

## visual

- v: select by character
- V: select whole line
- ctrl+v: vertical select visual

## command

- ,: redo last command

## macro

### create macro

1. q, start macro
1. press a key where macro save to
1. (some action series)
1. q, end the recording

### replay macro

- @(key that save macro)

## file

```sh
:o file <FILENAME>
:bf            # Go to first file.
:bl            # Go to last file
:bn            # Go to next file.
:bp            # Go to previous file.
:bw            # Close file.
```

## tab

```sh
:tabnew <filename>
gt, gT
```
