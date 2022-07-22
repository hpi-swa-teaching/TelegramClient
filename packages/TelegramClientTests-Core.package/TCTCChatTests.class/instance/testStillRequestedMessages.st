testing
testStillRequestedMessages

	self chat numberOfRequestedMessages: 10.

	self assert: 5 equals: self chat stillRequestedMessages.

	self chat requestMessages: 20.
	self assert: 20 equals: self chat stillRequestedMessages.

	self chat addOldestMessage: (TCCMessage new date: (DateAndTime fromUnixTime: 0)).
	self assert: 19 equals: self chat stillRequestedMessages.