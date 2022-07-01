testing
testMessageBetweenRequestsAnsweredMessage

	| replyMessage betweenMessage chat |
	chat := self core chatsHandler chats first.
	self core client onRequestType: 'getMessage' respond: (TCTMMocks mockMessageJsonFrom: chat id).
	replyMessage := TCCTextMessage newFromMessageEvent: (TCTMMocks mockTextMessageJsonFrom: chat id with: #messageSenderUser replyingTo: TCTMMocks mockMessageId) in: chat with: self core.
	replyMessage text: 'reply message'.
	replyMessage id: (TCTMMocks mockMessageId + 2).
	
	betweenMessage := TCCTextMessage newFromMessageEvent: (TCTMMocks mockTextMessageJsonFrom: chat id with: #messageSenderUser replyingTo: TCTMMocks mockMessageId) in: chat with: self core.
	betweenMessage text: 'between message'.
	betweenMessage id: (TCTMMocks mockMessageId + 1).

	chat addNewestMessage: replyMessage.
	self wantsToTest: (TCUMessage newFrom: replyMessage).
	0.5 seconds wait.
	self assertNotReading: 'Message not loaded' in: self subject.
	self assertReading: TCTMMocks mockText in: self subject.