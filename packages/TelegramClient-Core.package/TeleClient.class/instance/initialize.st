initialize-release
initialize
	| os |
	os := Smalltalk platformName.
	client := (os startsWith: 'Win32')
		 ifTrue: [WindowsClient new.]
		ifFalse: [(os startsWith: 'Mac OS')
			ifTrue: [MacClient new.]
			ifFalse: [LinuxClient new.]].
		handle := client Create.