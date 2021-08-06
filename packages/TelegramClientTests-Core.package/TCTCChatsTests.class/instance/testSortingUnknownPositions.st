testing
testSortingUnknownPositions

	| chat |

	chat := self chats last.
	chat position: nil.

	self chats notify.

	self assert: chat id equals: self chats last id.