accessing
getMessageById: aNumber

	^ self messageDictionary at: aNumber ifAbsent: [
		self requestMessage: aNumber.
		^TCCNotLoadedMessage new]