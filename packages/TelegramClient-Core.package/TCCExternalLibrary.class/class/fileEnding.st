as yet unclassified
fileEnding
	
	^ Smalltalk platformName caseOf: {
		['Win32'] -> ['dll'].
		['Mac OS'] -> ['dylib'].
		['unix'] -> ['so']}