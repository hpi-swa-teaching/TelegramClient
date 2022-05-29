testing
testMessageRequestsAnsweredMessage

	| message chat |
	chat := self core chatsHandler chats first.
	self core client onRequestType: 'getMessage' respond: (TCTMMocks mockMessageJsonFrom: chat id).
	message := TCCTextMessage newFromMessageEvent: (TCTMMocks mockTextMessageJsonFrom: chat id with: #messageSenderUser replyingTo: TCTMMocks mockMessageId) in: chat with: self core.
	message text: 'reply message'.
	message id: (TCTMMocks mockMessageId + 1).
	chat addNewestMessage: message.
	self wantsToTest: (TCUMessage newFrom: message).
	0.5 seconds wait.
	self assertNotReading: 'Message not loaded' in: self subject.
	self assertReading: TCTMMocks mockText in: self subject.