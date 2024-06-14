as yet unclassified
addPollOptions

	options := OrderedCollection new.
	self messageModel options do: [:option | self addPollOption: option].
	self messageModel when: #pollUpdated send: #updatePoll to: self.