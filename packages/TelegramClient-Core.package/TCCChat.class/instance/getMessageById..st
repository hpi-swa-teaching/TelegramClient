accessing
getMessageById: aNumber

	^ self messages
		detect: [:aMessage | aMessage id = aNumber]
		ifNone: TCCNotLoadedMessage new