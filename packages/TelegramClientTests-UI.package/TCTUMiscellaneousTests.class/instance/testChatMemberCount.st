testing
testChatMemberCount
	
	((self subject findByClass: TCUChatListItem)morphs) do: [
		:chatListItem | | chatWindowWrapper |
			chatWindowWrapper := self subject findByClass: TCUChatWindow.
			(MTFMorphWrapper newWith: {chatListItem}) click.
			0.1 seconds wait.
			chatListItem chat isPrivate
				ifTrue: [
					self assertNotReading: 'Members: ' in: chatWindowWrapper.
				] ifFalse: [
					self assertReading: ('Members: ', chatListItem chat memberCount asString) in: chatWindowWrapper.
				]
		]