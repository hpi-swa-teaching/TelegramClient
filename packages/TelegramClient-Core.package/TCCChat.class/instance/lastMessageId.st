accessing
lastMessageId

	^ self messages
		ifEmpty: [ self class defaultLastMessageId ]
		ifNotEmpty: [ self messages last id ]