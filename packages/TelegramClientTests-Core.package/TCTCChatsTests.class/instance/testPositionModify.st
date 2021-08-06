testing
testPositionModify

	| chat |

	chat := self chats first.
	self deny: chat id = self chats last id.
	
	chat position: self chats last id - 1.
	self chats notify.

	self assert: chat id equals: self chats last id.