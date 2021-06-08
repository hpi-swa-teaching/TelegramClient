testing
testMessageColorsDifferentForIncomingOutgoing

	| incomingMessage outgoingMessage |

	outgoingMessage := TCTMMocks mockMessage.
	incomingMessage := TCTMMocks mockMessage.
	
	outgoingMessage isOutgoing: true.
	incomingMessage isOutgoing: false.

	self deny: (TCUMessage newFromTCCMessage: outgoingMessage) color = (TCUMessage newFromTCCMessage: incomingMessage) color.