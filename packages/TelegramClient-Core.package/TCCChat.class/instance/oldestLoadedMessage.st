accessing
oldestLoadedMessage

	^ self messages
		ifEmpty: [ TCCNotLoadedMessage new
			date: self class defaultLastMessageDate]
		ifNotEmpty: [ self messages last ]