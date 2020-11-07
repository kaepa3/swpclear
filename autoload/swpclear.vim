

let s:os_type= system('uname')
let s:path = '~/.local/share/nvim/swap/*'
if has('win64')
    let s:path = '~\AppData\Local\nvim-data\swap\*'
endif

function!  swpclear#execute() abort
    let filelist = glob(s:path)
    let splitted = split(filelist, "\n")
    for file in splitted
        call delete(file)
    endfor
    echo "delete swap file"
endfunction

