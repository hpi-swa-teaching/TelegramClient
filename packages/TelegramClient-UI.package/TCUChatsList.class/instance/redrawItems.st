accessing
redrawItems

	| item |
	self clearItems.

	"reversed is temporarly needed while chats are not in right order"
	self flag: #todo.
	self items: (self chats reversed collect: [:aChat | 
		item := TCUChatListItem newWithChat: aChat andWidth: self width.
		item on: #mouseDown send: #chatItemClicked:event:from: to: self withValue: item]).

	self items do: [:anItem | self addMorph: anItem].