accessing
lastMessageDate
	"Date of the latest received message."

	^ self messages
		ifEmpty: [ self class defaultLastMessageDate ]
		ifNotEmpty: [ self messages first date ]