accessing
getMessageById: aNumber

	^ (self messageDictionary at: aNumber ifAbsent: [
			self messageDictionary at: aNumber put: Promise new.
			self requestMessage: aNumber.
			self messageDictionary at: aNumber.
		])
		wait;
		value