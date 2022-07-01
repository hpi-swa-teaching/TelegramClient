testing
testSentMessageAppearsInList

	self core client onRequestType: 'sendMessage' respond: (TCTMMocks mockUpdateNewMessageJsonEventFrom: 1).
	self openChatWithId: 1.
	self messageInputField sendKeys: TCTMMocks mockText.
	self assertReading: TCTMMocks mockText in: self subject.
	self sendButton click.
	0.5 seconds wait.
	self deny: (self messageInputField text contains: TCTMMocks mockText).
	self assertReading: TCTMMocks mockText in: self subject.