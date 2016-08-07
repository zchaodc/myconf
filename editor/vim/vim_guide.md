# VIM Guide

## Funs

* fast operations

 <leader>w : save

 <leader>q : quit

 <leader>x : quit without save

 <leader>h : toggle highlight search

 <leader>t : open new tab

 <leader>r : reload curent file

 <leader>| : open new vertical buffer

 <leader>- : open new horizontal buffer

 <leader>[number] : go to tab [number], from 1 to 9, 0 goes to last tab

## Others

regex to find the duplucated word
\(\<\w\+\>\)\_s*\1


:ab command
abbreviation


save as root
:w !sudo tee % 


earlier and later

Restore state
http://vim.wikia.com/wiki/Restore_state_of_edited_files_when_reopened
