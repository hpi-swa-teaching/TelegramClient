testing
testHandleMessageRequestAlreadyLoaded

	| messageRequest receiver |
	receiver := TCTMFunctionCalledVerifier new.
	messageRequest := TCCMessageRequest new messageId: 4;
											completionReceiver: receiver;
											completionMessage: #call:.
											
	self chat handleMessageRequest: messageRequest.																		
	self assert: receiver isCalled.
	