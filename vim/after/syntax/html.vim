unlet b:current_syntax
syn include @HTML $VIMRUNTIME/syntax/html.vim
syn region htmlTemplate start=+<script [^>]*type *=[^>]*text/x-handlebars-template[^>]*>+
            \                       end=+</script>+me=s-1 keepend
            \                       contains=@HTML,htmlScriptTag,@htmlPreproc
