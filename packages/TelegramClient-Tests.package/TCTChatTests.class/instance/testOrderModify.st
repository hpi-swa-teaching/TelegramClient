testing
testOrderModify

	| chat |

	chat := self chats first.
	chat order: 6.

	self chats notify.

	self assert: self chats last id equals: 1.