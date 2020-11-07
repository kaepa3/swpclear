
let s:path = '~\AppData\Local\nvim-data\swap'

function!  swpclear#execute() abort
    let filelist = glob(s:path . '\*')
    let splitted = split(filelist, "\n")
    for file in splitted
        call delete(file)
        echo file
    endfor
endfunction

