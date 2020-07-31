accessing
redrawItems

	self clearMessages.

	"reversed is temporarly needed while chats are not in right order"
	self messages: (self chat messages reversed collect: [:aMessage |
		"item := TCUChatListItem newWithChat: aChat andWidth: self width.
		 on: #mouseDown send: #chatItemClicked:event:from: to: self withValue: item"]).

	self items do: [:anItem | self addMorph: anItem].