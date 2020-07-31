accessing
redrawItems

	| item |
	self clearItems.

	"reversed is temporarly needed while chats are not in right order"
	self items: (self chats reversed collect: [:aChat |
		item := TCUChatListItem newWithChat: aChat width: self width.
		(aChat = self selectedChat) ifTrue: [item select].
		item on: #mouseDown send: #chatItemClicked:event:from: to: self withValue: item]).

	self items do: [:anItem | self addMorph: anItem].