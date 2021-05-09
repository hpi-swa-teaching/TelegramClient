instance creation
newWithMessage: aMessage
	| chatTitle authorName |
	chatTitle := ' in ' , (aMessage chat title).
	authorName := aMessage sender fullName.
	aMessage chat isPrivate ifTrue: [	chatTitle := ''].
	
	^ self basicNew
		text: authorName , chatTitle, ': ', aMessage message;
		initialize