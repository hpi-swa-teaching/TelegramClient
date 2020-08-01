testing
testOrderModify

	| aChat |

	aChat := self chats last.
	aChat order: 6.

	self chats notify.

	self assert: (self chats first id == 1).