testing
testMouseDownOnMessage

	| message messageMorph |

	message := (TCTMMocks mockTextMessageWith: self core).
	messageMorph := TCUMessage newFrom: message.
	messageMorph mouseDown: EventMorph new.

	self assert: message chat selectedReplyToMessageId == messageMorph messageModel id.