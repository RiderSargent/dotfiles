let s:darkest_blue = '#21252B'
let s:black        = '#282c34'
let s:white        = '#abb2bf'
let s:light_red    = '#e06c75'
let s:dark_red     = '#be5046'
let s:green        = '#98c379'
let s:light_yellow = '#e5c07b'
let s:dark_yellow  = '#d19a66'
let s:blue         = '#61afef'
let s:magenta      = '#c678dd'
let s:cyan         = '#56b6c2'
let s:gutter_grey  = '#636d83'
let s:comment_grey = '#5c6370'


let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:black, s:blue ], [ s:white, s:gutter_grey ] ]
let s:p.normal.middle   = [ [ s:white, s:darkest_blue ] ]
let s:p.normal.right    = [ [ s:black, s:blue ], [ s:white, s:comment_grey ] ]
let s:p.normal.error    = [ [ s:dark_red, s:black ] ]
let s:p.normal.warning  = [ [ s:light_yellow, s:black ] ]
let s:p.insert.left     = [ [ s:black, s:green ], [ s:white, s:comment_grey ] ]
let s:p.replace.left    = [ [ s:black, s:light_red ], [ s:white, s:comment_grey ] ]
let s:p.visual.left     = [ [ s:black, s:dark_yellow ], [ s:white, s:comment_grey ] ]

let s:p.inactive.left   = [ [ s:comment_grey, s:darkest_blue ], [ s:comment_grey, s:darkest_blue ] ]
let s:p.inactive.middle = [ [ s:comment_grey, s:darkest_blue ] ]
let s:p.inactive.right  = [ [ s:comment_grey, s:darkest_blue ], [ s:comment_grey, s:darkest_blue ] ]

let s:p.tabline.left    = [ [ s:white, s:comment_grey ] ]
let s:p.tabline.tabsel  = [ [ s:comment_grey, s:white ] ]
let s:p.tabline.middle  = [ [ s:white, s:black ] ]
let s:p.tabline.right   = [ [ s:black, s:comment_grey ] ]

let g:lightline#colorscheme#onedark#palette = lightline#colorscheme#fill(s:p)
