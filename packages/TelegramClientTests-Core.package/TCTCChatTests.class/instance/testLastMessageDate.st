testing
testLastMessageDate

	| lastMessageDate |
	lastMessageDate := self chat lastMessageDate.
	self assert: (DateAndTime fromUnixTime: 5 * 60) equals: lastMessageDate.