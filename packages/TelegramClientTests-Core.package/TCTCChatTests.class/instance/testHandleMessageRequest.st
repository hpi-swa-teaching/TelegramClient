testing
testHandleMessageRequest

	| messageRequest receiver |
	self mockTeleClient onRequestType: 'getChatHistory' respond: (TCTMMocks mockChatHistoryJsonContainingMessageId: 1 inChat: self chat id).
	
	receiver := TCTMFunctionCalledVerifier new.
	messageRequest := TCCMessageRequest new messageId: 1;
											completionReceiver: receiver;
											completionMessage: #call:.
	self chat handleMessageRequest: messageRequest.
	1 seconds wait.
	self assert: (self chat messageIds anySatisfy: [:id| id = 1]).
	self assert: receiver isCalled.
	
	