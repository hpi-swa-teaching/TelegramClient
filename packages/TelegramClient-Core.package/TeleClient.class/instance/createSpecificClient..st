initialize-release
createSpecificClient: aOS

	| client |
	client:= (aOS startsWith: 'Win32')
		ifTrue: [WindowsClient new]
		ifFalse: [(aOS startsWith: 'Mac OS')
			ifTrue: [MacClient new.]
			ifFalse: [LinuxClient new.]].
	
	^ client