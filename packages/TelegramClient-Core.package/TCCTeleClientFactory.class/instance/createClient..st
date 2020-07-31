creation
createClient: anOsName

	| client |
	client := (anOsName startsWith: 'Win32')
			ifTrue: [TCCWindowsClient new]
			ifFalse: [(anOsName startsWith: 'Mac OS')
				ifTrue: [TCCMacClient new]
				ifFalse: [TCCLinuxClient new]].
	client setLogLevel: 3. 
	"Log level is weird, 1 is fatal, 2 is critical, 3 is warning, 4 is default
	and debug, but 5-1024 are also fair game"
	^ client