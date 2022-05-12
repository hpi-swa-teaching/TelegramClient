accessing
newForCurrentOs

	^ Smalltalk platformName caseOf: {
		['Win32'] -> [TCCWindowsClient new].
		['Mac OS'] -> [TCCMacClient new].
		['unix'] -> [TCCLinuxClient new]}