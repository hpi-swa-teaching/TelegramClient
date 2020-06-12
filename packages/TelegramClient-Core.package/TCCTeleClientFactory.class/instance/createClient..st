creation
createClient: anOsName
	
	^ (anOsName startsWith: 'Win32')
			ifTrue: [TCCWindowsClient new]
			ifFalse: [(anOsName startsWith: 'Mac OS')
				ifTrue: [TCCMacClient new]
				ifFalse: [TCCLinuxClient new]]