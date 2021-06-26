testing
testMessageColorsDifferentForIncomingOutgoing

	| incomingMessage outgoingMessage |

	outgoingMessage := TCTMMocks mockTextMessage.
	incomingMessage := TCTMMocks mockTextMessage.

	outgoingMessage isOutgoing: true.
	incomingMessage isOutgoing: false.

	self deny: (TCUMessage newFrom: outgoingMessage) color = (TCUMessage newFrom: incomingMessage) color.