creation
newForCurrentOS

	| client |
	client := Smalltalk platformName caseOf: {
		['Win32'] -> [TCCWindowsClient new].
		['Mac OS'] -> [TCCMacClient new].
		['unix'] -> [TCCLinuxClient new]}.
	client setLogLevel: self defaultLogLevel.
	
	^ self newWithClient: client