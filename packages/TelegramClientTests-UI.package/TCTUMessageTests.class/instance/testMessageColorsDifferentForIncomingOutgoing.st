testing
testMessageColorsDifferentForIncomingOutgoing

	| incomingMessage outgoingMessage |

	outgoingMessage := TCTMMocks mockMessageWith: self core.
	incomingMessage := TCTMMocks mockMessageWith: self core.

	outgoingMessage isOutgoing: true.
	incomingMessage isOutgoing: false.

	self deny: (TCUMessage newFromTCCMessage: outgoingMessage) color = (TCUMessage newFromTCCMessage: incomingMessage) color.