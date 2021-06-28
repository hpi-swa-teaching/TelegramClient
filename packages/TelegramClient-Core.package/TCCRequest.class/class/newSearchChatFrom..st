instance creation
newSearchChatFrom: aUsername

	^ TCCRequest
		newWithType: 'searchPublicChat'
		from: {'username' -> aUsername}