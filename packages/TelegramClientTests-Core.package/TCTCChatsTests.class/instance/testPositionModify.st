testing
testPositionModify

	| chat |

	chat := self chats first.
	chat position: 6.

	self chats notify.

	self assert: 1 equals: self chats last id.