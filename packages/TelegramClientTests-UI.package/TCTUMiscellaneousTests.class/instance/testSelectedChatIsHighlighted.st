testing
testSelectedChatIsHighlighted

	self assert: (self subject chatsList items allSatisfy: [:item | item color = Color white]).
	self openChatWithId: 1.
	self deny: (self subject chatsList items detect: [:item | item chatID = 1]) color = Color white.