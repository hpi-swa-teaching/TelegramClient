as yet unclassified
testAddNewestMessage

	chat addNewestMessage: 'testmessage'.
	self assert: (chat messages includes: 'testmessage').