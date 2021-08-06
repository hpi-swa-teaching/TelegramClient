testing
testPositionModify

	| chat |

	chat := self chats first.
	self deny: chat id = self chats last id.
	
	chat position: 6.
	self chats notify.

	self assert: chat id equals: self chats last id.