initialization
updateChatsList

	self chatsList clearChats.

	self core chats reversed do: [:aChat |
		aChat title ifNotNil: [
			self chatsList addItem: aChat]].