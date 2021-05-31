testing
testChatMemberCount
	
	((self subject findByClass: TCUChatListItem)morphs) do: [
		:chatListItem | | chatWindowWrapper |
			chatWindowWrapper := self subject createWrapperFor: {self app chatWindow}.
			(MTFMorphWrapper newWith: {chatListItem}) click.
			chatListItem chat isPrivate 
				ifTrue: [
					self assertNotReading: 'Members: ' in: chatWindowWrapper.
				] ifFalse: [
					self assertReading: ('Members: ', chatListItem chat memberCount asString) in: chatWindowWrapper.
				]
		]