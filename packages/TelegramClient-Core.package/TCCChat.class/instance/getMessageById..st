accessing
getMessageById: aNumber

	^ self messageDictionary at: aNumber ifAbsent: TCCNotLoadedMessage new