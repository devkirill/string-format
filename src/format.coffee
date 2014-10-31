String::format = (args...) ->
    @replace /\{\{|\}\}|\{(\d+)\}/g, (m, n) ->
        return "{" if m == "{{"
        return "}" if m == "}}"
        args[n]