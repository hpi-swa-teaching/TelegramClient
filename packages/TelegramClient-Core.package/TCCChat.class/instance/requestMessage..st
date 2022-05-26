loading
requestMessage: aMessageId

	self core send: (TCCRequest newGetMessage: aMessageId from: self id).