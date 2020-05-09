function! openscad#ReMakeFn(name) abort
  try
    let &l:makeprg='openscad "%" -o "%:p:h/'.a:name.'.stl"'
    execute 'Make'
  finally
    set makeprg=openscad\ %:S\ -o\ %:r:S.stl
  endtry
endfunction

function! openscad#ReMakeFnBang(name) abort
  try
    let &l:makeprg='openscad "%" -o "%:p:h/'.a:name.'.stl"'
    execute 'Make!'
  finally
    set makeprg=openscad\ %:S\ -o\ %:r:S.stl
  endtry
endfunction
