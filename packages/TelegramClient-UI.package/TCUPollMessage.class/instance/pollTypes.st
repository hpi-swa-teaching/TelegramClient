constructing
pollTypes

	self messageModel isAnonymous ifTrue: [pollTypeString := 'Anonymous ']
	ifFalse: [pollTypeString := ''].
	self messageModel pollType = 'pollTypeRegular' ifTrue: [pollTypeString := pollTypeString, 'Poll']
	ifFalse: [pollTypeString := pollTypeString, 'Quiz'].