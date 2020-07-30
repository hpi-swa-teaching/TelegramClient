creation
createClient: anOsName

	| client |
	client := (anOsName startsWith: 'Win32')
			ifTrue: [TCCWindowsClient new]
			ifFalse: [(anOsName startsWith: 'Mac OS')
				ifTrue: [TCCMacClient new]
				ifFalse: [TCCLinuxClient new]].
	client setLogLevel: 3.
	^client