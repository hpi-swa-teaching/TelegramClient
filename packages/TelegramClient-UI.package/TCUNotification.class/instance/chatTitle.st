initialization
chatTitle 

	self chat isPrivate ifTrue: [^'']. 
	^self chat title