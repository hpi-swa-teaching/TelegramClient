testing
testMessageRequestsAnsweredMessage

	| message chat |
	chat := self core chatsHandler chats at: 1.
	self core client onRequestType: 'getMessage' respond: (TCTMMocks mockMessageJsonFrom: chat id).
	message := TCCTextMessage newFromMessageEvent: (TCTMMocks mockTextMessageJsonFrom: TCTMMocks mockPrivateChat id with: #MessageUser replyingTo: TCTMMocks mockMessageId) in: chat with: self core.
	message id: TCTMMocks mockMessageId + 1.
	message text: 'reply message'.
	self wantsToTest: (TCUMessage newFrom: message).
	0.5 seconds wait.
	self assertNotReading: 'Message not loaded' in: self subject.
	self assertReading: TCTMMocks mockText in: self subject.