; extends

(jsx_element
	open_tag: (jsx_opening_element
		name: (member_expression object: (identifier) @type))
	close_tag: (jsx_closing_element
		name: (member_expression
			object: (identifier) @type))
	(#set! priority 110))

(jsx_self_closing_element
	name: (member_expression
		object: (identifier) @type)
	(#set! priority 110))
