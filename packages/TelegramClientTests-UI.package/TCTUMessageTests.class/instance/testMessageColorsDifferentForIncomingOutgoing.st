as yet unclassified
testMessageColorsDifferentForIncomingOutgoing


	| incomingMessage outgoingMessage |
	outgoingMessage := TCTMocks mockMessage.
	incomingMessage := TCTMocks mockMessage.
	
	outgoingMessage isOutgoing: true.
	incomingMessage isOutgoing: false.

	self deny: (TCUMessage newFromTCCMessage: outgoingMessage) color equals: (TCUMessage newFromTCCMessage: incomingMessage) color.