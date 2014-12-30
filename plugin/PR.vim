"*****************************************************************
"* commands
"*****************************************************************
"command! -nargs=* PR call PR()


function! PR()
  let vheight = 10

  let pr_list=system('gi')

  " horizontal split
  setlocal winfixheight
  silent execute 'botright '.vheight.' new __PR_list'
  setlocal buftype=nofile
  setlocal bufhidden=delete
  silent put! =pr_list

  " remove an extra line at the bottom and move the cursor to the top
  execute "normal! Gddgg"
endfunction
