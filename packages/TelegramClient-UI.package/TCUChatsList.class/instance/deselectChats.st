event handling
deselectChats

	self items do: [:each | each deselect].
	self
		selectedChat: TCCNullChat new;
		triggerEvent: #chatDeselected.