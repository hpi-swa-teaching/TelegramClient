instance creation
newSearchChatFrom: aString

	^ TCCRequest
		newWithType: 'searchPublicChat'
		from: {'username' -> aString}