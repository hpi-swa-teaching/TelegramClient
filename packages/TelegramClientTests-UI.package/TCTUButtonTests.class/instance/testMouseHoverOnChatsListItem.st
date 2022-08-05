hovering
testMouseHoverOnChatsListItem

	| chatListItem oldColor |

	chatListItem := TCUChatListItem new.
	oldColor := chatListItem color.
	chatListItem mouseEnter: EventMorph new.
	self deny: oldColor = chatListItem color.
	chatListItem mouseLeave: EventMorph new.
	self assert: oldColor = chatListItem color.