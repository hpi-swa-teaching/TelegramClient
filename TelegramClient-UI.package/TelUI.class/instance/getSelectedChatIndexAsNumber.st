as yet unclassified
getSelectedChatIndexAsNumber
	1 to: chats size do: [ :i | ((chats at: i) title) = selectedChatIndex ifTrue: [^ i]].
	^ 0.