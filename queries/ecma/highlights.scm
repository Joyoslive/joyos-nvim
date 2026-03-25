; extends

("return" @macro
	(#set! priority 110))

([(null) (undefined)] @macro
	(#set! priority 110))

(import_specifier
	name: (identifier) @variable
	(#set! priority 110))
