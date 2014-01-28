" Vim Compiler File
" Compiler: gdub

if exists("current_compiler")
    finish
endif
let current_compiler = "gdub"

if exists(":CompilerSet") != 2 " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=gw

CompilerSet errorformat=
    \%-G:%.%\\+,
    \%E%f:\ %\\d%\\+:\ %m\ @\ line\ %l\\,\ column\ %c.,%-C%.%#,%Z%p^,
    \%E%>%f:\ %\\d%\\+:\ %m,%C\ @\ line\ %l\\,\ column\ %c.,%-C%.%#,%Z%p^,
    \%-G\\s%#,
    \%-GBUILD\ SUCCESSFUL#,
    \%-GTotal\ \time:\ %.%#

