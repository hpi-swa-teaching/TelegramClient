as yet unclassified
createChat
	contactIndex = nil ifTrue: [^nil].
	backend createPrivateChatWith: self getSelectedUserId.
	(self dependents at: 1) delete.