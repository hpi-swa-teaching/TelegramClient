building
createChat
	contactIndex isNil ifTrue: [^nil].
	backend createPrivateChatWith: self getSelectedUserId.
	(self dependents first) delete.