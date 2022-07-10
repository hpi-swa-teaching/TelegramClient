accessing
oldestLoadedMessageDate

	^ self messages
		ifEmpty: [ self class defaultLastMessageDate ]
		ifNotEmpty: [ self messages last date ]