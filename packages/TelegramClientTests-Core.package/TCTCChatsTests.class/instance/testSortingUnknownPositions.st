testing
testSortingUnknownPositions

	| chat |

	chat := self chats last.
	chat positionKnown: false.

	self chats notify.

	self assert: 3 equals: self chats first id.