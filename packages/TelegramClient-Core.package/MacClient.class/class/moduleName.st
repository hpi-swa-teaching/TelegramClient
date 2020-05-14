as yet unclassified
moduleName

	| libPath |
	libPath := FileDirectory default / 'libtdjson.1.6.0.dylib'. 
	
	libPath exists ifFalse: [^self error: 'tdlib missing'].

	^  libPath fullName