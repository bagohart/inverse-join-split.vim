function! inverse_join_split#InverseJoin()
    function! s:inner(...) closure abort
        let count = v:count1
        let i = 0
        while i < count
            let i += 1
            if match(getline(line('.')-1), '^\s*$') == -1
                let save_z = getreg("z")
                let save_z_type = getregtype("z")
                execute 'normal! -"zdg_"_ddg_a' . "\<Space>\<Esc>" . '"zp`['
                call setreg("z", save_z, save_z_type)
            else
                normal! k"_dd
            endif
        endwhile
    endfunction
    let &opfunc=get(funcref('s:inner'), 'name')
    return 'g@l'
endfunction

function! inverse_join_split#InverseSplit()
    function! s:inner(...) closure abort
        let count = v:count1
        let i = 0
        while i < count
            " a count > 1 effectively inserts blank lines, which seems reasonable.
            let i += 1
            let save_z = getreg("z")
            let save_z_type = getregtype("z")
            execute 'normal! "zdg_OZ' . "\<BS>\<Esc>" . '"zp' . "\<Esc>`["
            " the Z<BS><Esc> is necessary to make comments work correctly
            call setreg("z", save_z, save_z_type)
        endwhile
    endfunction
    let &opfunc=get(funcref('s:inner'), 'name')
    return 'g@l'
endfunction
