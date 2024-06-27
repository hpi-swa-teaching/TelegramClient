event handling
confirmPressed

	self question: (self allInputFields at: 1) contents asString withBlanksTrimmed squeakToUtf8.
	self getOptions.
	(self question) ifNotEmpty: [self chat sendPollMessage: (self pollType) asking: (self question) with: (self options) isAnonymous: (self isAnonymous)].
	self abandon.