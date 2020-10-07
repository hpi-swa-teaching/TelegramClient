testing
testStillRequestedMessages

	self chat numberOfRequestedMessages: 10.
	
	self assert: self chat stillRequestedMessages equals: 5.
	
	self chat requestMessages: 20.
	self assert: self chat stillRequestedMessages equals: 20.
	
	self chat addOldestMessage: TCCMessage new.
	self assert: self chat stillRequestedMessages equals: 19.