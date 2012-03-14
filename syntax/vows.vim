if exists("b:current_syntax")
  finish
endif

if &ft =~ "coffee"
  runtime! syntax/coffee.vim
else
  runtime! syntax/javascript.vim
endif

syntax region vowsContextD    start=+^\s\+"+ skip=+\\\\\|\\"+ end=+":\|" :+ oneline
highlight link vowsContextD Constant

syntax region vowsContextS  start=+^\s\+'+ skip=+\\\\\|\\'+ end=+':\|' :+ oneline
highlight link vowsContextS Constant

syntax region vowsPendingS   start=+'pending+ skip=+\\\\\|\\'+ end=+'+ oneline
highlight link vowsPendingS Keyword

syntax region vowsPendingD   start=+"pending+ skip=+\\\\\|\\"+ end=+"+ oneline
highlight link vowsPendingD Keyword

syntax keyword vowsKeywords topic
highlight link vowsKeywords Keyword

syntax keyword vowsFunctions describe addBatch equal strictEqual notEqual notStrictEqual deepEqual notDeepEqual isFunction isObject isString isArray isNumber isBoolean typeOf instanceOf isTrue isFalse isNull isNotNull isUndefined isNaN include match lengthOf isEmpty throws doesNotThrow
highlight link vowsFunctions Function

let b:current_syntax = "vows"
