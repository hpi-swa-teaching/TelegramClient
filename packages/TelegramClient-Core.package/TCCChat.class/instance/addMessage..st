adding
addMessage: aMessage

	self messageDictionary at: aMessage id ifAbsent: [
		self messageDictionary at: aMessage id put: Promise new
	].
	(self messageDictionary at: aMessage id) resolveWith: aMessage