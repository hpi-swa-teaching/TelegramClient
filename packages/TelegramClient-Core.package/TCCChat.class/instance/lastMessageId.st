accessing
lastMessageId

	^ self messages
		ifEmpty: [ self class defaultFromMessageId ]
		ifNotEmpty: [ self messages last id ]