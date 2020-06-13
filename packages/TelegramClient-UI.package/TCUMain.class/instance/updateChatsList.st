initialization
updateChatsList

	| chats |

	self chatsList clearChats.
	chats := self core chats asSortedCollection: [:x :y | x order > y order].

	chats do: [:aChat |
		aChat title isNil not ifTrue: [
			self chatsList addItem: aChat]].