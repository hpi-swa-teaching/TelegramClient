testing
testOldestLoadedMessageDate

	| oldestMessageDate |
	oldestMessageDate := self chat oldestLoadedMessageDate.
	self assert: (DateAndTime fromUnixTime: 60) equals: oldestMessageDate.