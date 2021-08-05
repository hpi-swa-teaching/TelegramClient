testing
testSortingUnknownPositions

	| chat |

	chat := self chats last.
	chat position: nil.

	self chats notify.

	self assert: 3 equals: self chats first id.