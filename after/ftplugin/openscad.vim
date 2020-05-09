setlocal makeprg=openscad\ %:S\ -o\ %:r:S.stl

command! -nargs=1 -bang ReMake call openscad#ReMakeFn(<f-args>)

setlocal commentstring=//\ %s

inoremap <buffer> ;;b include <BOSL2/std.scad>
inoremap <buffer> ;;a include <BOSL/constants.scad><CR>use <BOSL/transforms.scad><CR>
  \use <BOSL/shapes.scad><CR>use <BOSL/masks.scad><CR>use <BOSL/math.scad>
inoremap <buffer> ;;n include <NopSCADlib/lib.scad><CR>
  \// include <NopSCADlib/vitamins/stepper_motors.scad><CR><ESC>cc
inoremap <buffer> ;;s include <stdlib.scad><CR><CR>$fn=64;<CR><CR><ESC>cc
