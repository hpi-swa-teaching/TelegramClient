testing
testMessageColorsDifferentForIncomingOutgoing

	| incomingMessage outgoingMessage |

	outgoingMessage := TCTMMocks mockTextMessageWith: self core.
	incomingMessage := TCTMMocks mockTextMessageWith: self core.

	outgoingMessage isOutgoing: true.
	incomingMessage isOutgoing: false.

	self deny: (TCUMessage newFrom: outgoingMessage) color = (TCUMessage newFrom: incomingMessage) color.