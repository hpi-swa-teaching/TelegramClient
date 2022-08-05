testing
testTextMessageIsUserMessage

	| message |

	message := (TCTMMocks mockTextMessageWith: self core).

	self wantsToTest: (TCUMessage newFrom: message).
	self assert: self subject isUserMessage.