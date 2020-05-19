Creation
CreateClient: osName
"Creates a new client based on os name"
|client|
client := (osName startsWith: 'Win32')
		 ifTrue: [WindowsClient new.]
		ifFalse: [(osName startsWith: 'Mac OS')
			ifTrue: [MacClient new.]
			ifFalse: [LinuxClient new.]].
^client.