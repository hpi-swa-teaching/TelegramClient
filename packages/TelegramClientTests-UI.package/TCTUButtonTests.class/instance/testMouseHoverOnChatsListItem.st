hovering
testMouseHoverOnChatsListItem

	|chatListItem oldColor|

	chatListItem := TCUChatListItem new.
	oldColor := chatListItem color.
	chatListItem mouseEnter: EventMorph new.
	self deny: oldColor = chatListItem color.