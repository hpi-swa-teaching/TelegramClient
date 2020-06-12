initialization
updateChatsList

	| chats i|
	self chatsList clearChats.
	chats := self core chats asSortedCollection: [:x :y| x order > y order].
	
	i := 0.
	
	chats do: [:aChat| i < 10 ifTrue: [
			aChat title isNil not ifTrue: [
				self chatsList addItem: aChat title.]]].