as yet unclassified
addPollOptions

	self messageModel options do: [:option |
		self addMorphBack: (self addPollOption: option)].