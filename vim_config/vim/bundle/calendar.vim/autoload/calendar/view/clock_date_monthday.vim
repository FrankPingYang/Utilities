" =============================================================================
" Filename: autoload/calendar/view/clock_date_monthday.vim
" Author: itchyny
" License: MIT License
" Last Change: 2013/12/25 00:13:37.
" =============================================================================

let s:save_cpo = &cpo
set cpo&vim

function! calendar#view#clock_date_monthday#new(source)
  return s:constructor.new(a:source)
endfunction

let s:self = {}
let s:self.y_height = 1
let s:self.smaller = 1
let s:self.colnum = 2

function! s:self.max_letter() dict
  return [printf('%s', calendar#day#join_date([12, 30]))]
endfunction

function! s:self.get_letter() dict
  let [y, m, d] = calendar#day#today().get_ymd()
  return [printf('%s', calendar#day#join_date([m, d]))]
endfunction

let s:constructor = calendar#constructor#view_clock#new(s:self)

let &cpo = s:save_cpo
unlet s:save_cpo
