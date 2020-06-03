initialization
updateChatsList

	| chats i|
	self chatsList clearChats.
	chats := self core chats.
	
	i := 0.
	
	chats do: [:aChat| i < 10 ifTrue: [
			aChat fullName isNil not ifTrue: [
				self chatsList addItem: aChat fullName]]].