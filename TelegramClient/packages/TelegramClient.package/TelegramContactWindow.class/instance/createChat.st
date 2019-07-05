as yet unclassified
createChat
	selectedContactIndex = nil ifTrue: [^nil].
	backend createPrivateChatWith: self getSelectedUserId.
	(self dependents at: 1) delete.