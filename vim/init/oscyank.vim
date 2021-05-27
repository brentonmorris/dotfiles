"autoautocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | OSCYankReg " | endif
autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | OSCYankReg " | endif
