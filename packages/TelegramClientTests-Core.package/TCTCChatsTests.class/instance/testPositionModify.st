testing
testPositionModify

	| chat |

	chat := self chats first.
	chat position: 0.

	self chats notify.

	self assert: chat id equals: self chats last id.