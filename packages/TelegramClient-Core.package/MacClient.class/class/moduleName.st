accessing
moduleName

	| libPath |
	libPath := FileDirectory default / 'libtdjson.1.6.0.dylib'. 

	^  libPath fullName