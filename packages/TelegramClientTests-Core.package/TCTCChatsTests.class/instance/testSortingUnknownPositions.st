testing
testSortingUnknownPositions

	| chat |

	chat := self chats last.
	
	self deny: chat id = self chats first id.
	self assert: chat positionKnown.

	chat position: TCCChat defaultUnknownPosition.
	self chats notify.

	self assert: chat id equals: self chats first id.
	self deny: chat positionKnown.