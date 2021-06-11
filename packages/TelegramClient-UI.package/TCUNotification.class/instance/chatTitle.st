initialization
chatTitle

	^ self chat isPrivate
		ifTrue: ['']
		ifFalse: [self chat title]
