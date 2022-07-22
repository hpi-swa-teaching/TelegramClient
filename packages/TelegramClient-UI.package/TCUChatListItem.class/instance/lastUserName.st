accessing
lastUserName

	^ ((self chat lastMessageSenderId = self chat core loggedInUserId)
		ifTrue:['You: ']
		ifFalse: [(self chat lastMessageSenderName)
				ifEmpty: ['']
				ifNotEmpty: [(self chat lastMessageSenderName,': ')]])