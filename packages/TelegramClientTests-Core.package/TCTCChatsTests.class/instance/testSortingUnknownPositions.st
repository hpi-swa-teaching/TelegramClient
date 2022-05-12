testing
testSortingUnknownPositions

	| chat |

	chat := self chats first.
	
	self assert: chat positionKnown.

	chat position: TCCChat defaultUnknownPosition.
	self chats notify.

	self deny: chat positionKnown.
	self assert: chat id equals: self chats last id.