String::format = (args...) ->
	@replace \
	/([{}])\1|\{(.*?)(?:!([^:]+?)?)?(?::(.+?))?\}/g,
	(match, literal, field_name, conversion, format_spec) ->
		return literal if literal