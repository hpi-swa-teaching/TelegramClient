testing
testChatMemberCount
	
	((self subject findByClass: TCUChatListItem)morphs) do: [
		:chatListItem |
			(MTFMorphWrapper newWith: {chatListItem}) click.
			chatListItem chat isPrivate 
				ifTrue: [
					self assertNotReading: 'Members: ' in: self app chatWindow.
				] ifFalse: [
					self assertReading: ('Members: ', chatListItem chat memberCount asString) in: self app chatWindow.
				]
		]